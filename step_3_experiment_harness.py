import re
import pandas as pd
import better_plotter
import os.path
from subprocess import STDOUT, TimeoutExpired, CalledProcessError, check_output, call

# Constants

PORT = 5432

REPEATS = 3

GPROM_LOCATION = './gprom/bin/gprom'
GPROM_FLAGS = '-timing true -Cschema_consistency false -Cattr_reference_consistency false -Cparent_child_links false -Cdata_structure_consistency false -Ofactor_attrs true -heuristic_opt true -log false -show_result false'

# Utilities

methods = {
    "R": "-Owhatif_data_slicing false -Owhatif_program_slicing false",
    "R+PS": "-Owhatif_data_slicing false",
    "R+DS": "-Owhatif_program_slicing false",
    "R+PS+DS": "" # program slicing and data slicing are enabled by default
}

PARSE_GPROM_REGEX = 'timer: (.*)- total:\s*([0-9]+\.?[0-9]*|\.[0-9]+)'
def parse_gprom_timer(s):
    return [(p.group(1).strip(), float(p.group(2))) for p in filter(lambda x: x is not None, [re.search(PARSE_GPROM_REGEX, l) for l in s.split('\n')])]

def grab_timer(timer, timers):
    return list(filter(lambda t: t[0] == timer, timers))[0][1]

def execute_gprom(file, database, method):
    try:
        return check_output(f'{GPROM_LOCATION} -backend postgres -host localhost -port {PORT} -user whatif -passwd mahif -db {database} {GPROM_FLAGS} {methods[method]} -queryFile {file}', stderr=STDOUT, timeout=60*30, shell=True).decode("utf-8")
    except CalledProcessError as e:
        print("There was an issue executing GProM:", e)
        exit(1)
    # mocked output
#     return '''timer: ASSERT                                                               - total:     0.000403 sec calls:        16 avg:     0.000025 min:     0.000023 max:     0.000030
# timer: OptimizeModel                                                        - total:     0.010183 sec calls:         1 avg:     0.010183 min:     0.010183 max:     0.010183
# timer: OptimizeModel - RemoveProperties                                     - total:     0.000133 sec calls:         1 avg:     0.000133 min:     0.000133 max:     0.000133
# timer: OptimizeModel - check safety of projection merge                     - total:     0.000186 sec calls:        22 avg:     0.000008 min:     0.000007 max:     0.000013
# timer: OptimizeModel - factor attributes in conditions                      - total:     0.000301 sec calls:         2 avg:     0.000150 min:     0.000096 max:     0.000205
# timer: OptimizeModel - materialize projections that are unsafe to be merged - total:     0.000044 sec calls:         1 avg:     0.000044 min:     0.000044 max:     0.000044
# timer: OptimizeModel - merge adjacent projections and selections            - total:     0.000859 sec calls:         3 avg:     0.000286 min:     0.000066 max:     0.000726
# timer: OptimizeModel - pull up duplicate remove operators                   - total:     0.002350 sec calls:         1 avg:     0.002350 min:     0.002350 max:     0.002350
# timer: OptimizeModel - pull up provenance projections                       - total:     0.000063 sec calls:         1 avg:     0.000063 min:     0.000063 max:     0.000063
# timer: OptimizeModel - push down aggregation through join                   - total:     0.000034 sec calls:         1 avg:     0.000034 min:     0.000034 max:     0.000034
# timer: OptimizeModel - remove redundant duplicate removal operators by key  - total:     0.000053 sec calls:         1 avg:     0.000053 min:     0.000053 max:     0.000053
# timer: OptimizeModel - remove redundant duplicate removal operators by set  - total:     0.000069 sec calls:         1 avg:     0.000069 min:     0.000069 max:     0.000069
# timer: OptimizeModel - remove redundant projection operators                - total:     0.000055 sec calls:         1 avg:     0.000055 min:     0.000055 max:     0.000055
# timer: OptimizeModel - remove unnecessary columns                           - total:     0.000759 sec calls:         1 avg:     0.000759 min:     0.000759 max:     0.000759
# timer: OptimizeModel - remove unnecessary window operators                  - total:     0.000137 sec calls:         1 avg:     0.000137 min:     0.000137 max:     0.000137
# timer: OptimizeModel - replace attrs with expr                              - total:     0.000105 sec calls:        20 avg:     0.000005 min:     0.000005 max:     0.000008
# timer: OptimizeModel - selection move around                                - total:     0.004798 sec calls:         1 avg:     0.004798 min:     0.004798 max:     0.004798
# timer: PropertyInference - EC                                               - total:     0.004458 sec calls:         1 avg:     0.004458 min:     0.004458 max:     0.004458
# timer: PropertyInference - EC - bottom-up                                   - total:     0.001743 sec calls:         1 avg:     0.001743 min:     0.001743 max:     0.001743
# timer: PropertyInference - EC - print                                       - total:     0.000242 sec calls:         2 avg:     0.000121 min:     0.000106 max:     0.000136
# timer: PropertyInference - EC - top-down                                    - total:     0.002451 sec calls:         1 avg:     0.002451 min:     0.002451 max:     0.002451
# timer: PropertyInference - Keys                                             - total:     0.000008 sec calls:         1 avg:     0.000008 min:     0.000008 max:     0.000008
# timer: PropertyInference - Set                                              - total:     0.000125 sec calls:         1 avg:     0.000125 min:     0.000125 max:     0.000125
# timer: PropertyInference - iCols                                            - total:     0.000561 sec calls:         1 avg:     0.000561 min:     0.000561 max:     0.000561
# timer: SQLcodeGen                                                           - total:     0.000853 sec calls:         1 avg:     0.000853 min:     0.000853 max:     0.000853
# timer: modeul - metadata lookup - running queries                           - total:     0.746798 sec calls:        49 avg:     0.015240 min:     0.000070 max:     0.729829
# timer: module - metadata lookup                                             - total:     0.012928 sec calls:         2 avg:     0.006464 min:     0.000010 max:     0.012918
# timer: module - parser                                                      - total:     0.000853 sec calls:         1 avg:     0.000853 min:     0.000853 max:     0.000853
# timer: rewrite                                                              - total:     0.000022 sec calls:         1 avg:     0.000022 min:     0.000022 max:     0.000022
# timer: rewrite - merge update reenactments                                  - total:     0.000108 sec calls:         2 avg:     0.000054 min:     0.000054 max:     0.000054
# timer: translation                                                          - total:     3.546336 sec calls:         1 avg:     3.546336 min:     3.546336 max:     3.546336
# timer: translator - CPLEX time                                              - total:     0.531233 sec calls:       100 avg:     0.005312 min:     0.003376 max:     0.021304
# timer: translator - LP construction                                         - total:     2.904827 sec calls:       200 avg:     0.014524 min:     0.000214 max:     0.038631
# timer: translator - case exprs w/ fresh vars from history                   - total:     0.134264 sec calls:       200 avg:     0.000671 min:     0.000034 max:     0.001337
# timer: translator - expression to constraints                               - total:     1.555402 sec calls:       200 avg:     0.007777 min:     0.000114 max:     0.020335
# timer: translator - newLPProblem                                            - total:     1.208519 sec calls:       200 avg:     0.006042 min:     0.000049 max:     0.016945
# timer: translator - program slicing optimization                            - total:     3.520685 sec calls:         1 avg:     3.520685 min:     3.520685 max:     3.520685
# timer: ====================================================================
# timer: TOTAL                                                                - total:    66.418699 sec calls:         1 avg:    66.418699 min:    66.418699 max:    66.418699'''

PARSE_POSTGRES_REGEX = 'Time: ([0-9]+\.?[0-9]*|\.[0-9]+)'
def parse_postgres_timer(s):
    return [float(p.group(1))/1000 for p in filter(lambda x: x is not None, [re.search(PARSE_POSTGRES_REGEX, l) for l in s.split('\n')])]

def postgres_time_slices(times):
    # note that this relies on the structure of the output:
    #   the first 2 timers are the table copy and index creation ("Creation")
    #   the intermediate timers are the execution of the updates ("Exe")
    #   the final timer is the symmetric difference ("Delta")
    return [("Creation", sum(times[:2])), ("Exe", sum(times[2:-1])), ("Delta", times[-1])]

def execute_postgres(file, database):
    try:
        return check_output(f'psql -h localhost -p {PORT} -U whatif -d {database} < {file}', stderr=STDOUT, timeout=60*30, shell=True).decode("utf-8")
    except CalledProcessError as e:
        print("There was an issue executing Postgres:", e)
        exit(1)

    # mocked output
#     return '''Timing is on.
# Time: 1.534 ms
# Time: 0.889 ms
# Time: 0.265 ms
# Time: 0.146 ms
# Time: 0.136 ms
# Time: 0.170 ms
# Time: 0.144 ms
# Time: 0.362 ms'''

def count_past_iterations(file, query):
    df = pd.read_csv(file)
    return df[query(df)].count()

# Experiments

def updates(dataset, method, u, t):

    # Choose file
    file = False
    if dataset == '5m' or dataset == '50m':
        file = f'experiments/updates/u{u}_d10_t{t}_{dataset}.txt'
    elif dataset == 'ycsb' or dataset == 'tpcc':
        file = f'experiments/updates/{dataset}/mahif/{dataset}_u{u}_d10_t{t}.txt'
    if not file: raise Exception('unknown experiment')
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute
    f = f'{method} {dataset.upper()}'
    c = count_past_iterations(f'raw_results/t{t}_optimizations.csv', lambda df: (df['Updates'] == u) & (df['Method'] == f)).iloc[0]

    if method != 'R' or (method == 'R' and t == 10): 
        for n in range(c+1, REPEATS+1):
            print(f'Executing updates/datasize/selectivity experiment with {dataset.upper()}, {u} updates, {t}% selectivity ({method})... {n}/{REPEATS}')
            result = parse_gprom_timer(execute_gprom(file, 'taxi_trips' if (dataset == '5m' or dataset == '50m') else dataset, method))

            with open(f'raw_results/t{t}_optimizations.csv', 'a') as optimizations:
                optimizations.write(f'{u},{grab_timer("TOTAL", result)},{method} {dataset.upper()}\n')

            if t == 10 and (method == 'R' or method == 'R+PS+DS'):
                with open(f'raw_results/optimizations.csv', 'a') as optimizations:
                    optimizations.write(f'{u},{grab_timer("TOTAL", result)},{method} {dataset.upper()}\n')
                with open(f'raw_results/naive.csv', 'a') as optimizations:
                    optimizations.write(f'{u},{grab_timer("TOTAL", result)},{method} {dataset.upper()}\n')

def updates_naive(dataset, u):
    file = False
    if dataset == '5m' or dataset == '50m':
        file = f'experiments/updates/naive_u{u}_d10_t10_{dataset}.sql'
    elif dataset == 'ycsb' or dataset == 'tpcc':
        file = f'experiments/updates/{dataset}/naive/{dataset}_u{u}_d10_t10.sql'
    if not file: raise Exception('unknown experiment')
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    f = f'Naive {dataset.upper()}'
    c = count_past_iterations(f'raw_results/naive.csv', lambda df: (df['Updates'] == u) & (df['Method'] == f)).iloc[0]

    for n in range(c+1, REPEATS+1):
        print(f'Executing updates/datasize/selectivity experiment with {dataset.upper()}, {u} updates, {t}% selectivity (Naive)... {n}/{REPEATS}')
        try:
            times = parse_postgres_timer(execute_postgres(file, 'taxi_trips' if (dataset == '5m' or dataset == '50m') else dataset))
        except TimeoutExpired as e:
            times = [0, 0, 0, 0, 0] # see parse_postgres_timer handling for why this is array of zeroes
        result = sum(times)

        with open(f'raw_results/naive.csv', 'a') as naive:
            naive.write(f'{u},{result},Naive {dataset.upper()}\n')

        if dataset == '5m' or dataset == '50m':
            with open(f'raw_results/naive_breakdown.csv', 'a') as breakdown:
                for slice in postgres_time_slices(times):
                    breakdown.write(f'{u},{slice[1]},{slice[0]},{dataset.upper()}\n')

# '''
# def datasizes(dataset, method, communitymax):

#     # Choose file
#     file = f'datasize/u100_d15_communitymax{communitymax}_{"f" if dataset == "5m" else "g"}.txt'

#     # Execute
#     execute_gprom(file, 'whatif', method)
#     #return parse_gprom_timer(execute_gprom(file, 'whatif', method))
# '''

def dependents(method, d):

    # Choose file
    file = f'experiments/dependents/u100_d{d}_t10_5m.txt'
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute
    c = count_past_iterations('raw_results/dependent_updates.csv', lambda df: (df['Percentage of Dependent Updates'] == d) & (df['Method'] == method)).iloc[0]
    for n in range(c+1, REPEATS+1):
        print(f'Executing dependent updates experiment with {d}% dependent updates in history... {n}/{REPEATS}')
        result = parse_gprom_timer(execute_gprom(file, 'taxi_trips', method))

        with open('raw_results/dependent_updates.csv', 'a') as dependent_updates:
            dependent_updates.write(f'{d},{grab_timer("TOTAL", result)},{method}\n')

def selectivities(method, communitymax):

    # Choose file
    file = f'experiments/selectivity/u100_d1_communitymax{communitymax}.txt'
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute
    c = count_past_iterations('raw_results/affected_data.csv', lambda df: (df['Community Max'] == communitymax) & (df['Method'] == method)).iloc[0]
    for n in range(c+1, REPEATS+1):
        print(f'Executing selectivity experiment with maximum community area {communitymax} ({method})... {n}/{REPEATS}')
        result = parse_gprom_timer(execute_gprom(file, 'taxi_trips', method))

        with open('raw_results/affected_data.csv', 'a') as affected_data:
            affected_data.write(f'{communitymax},{grab_timer("TOTAL", result)},{method}\n')

def inserts(dataset, method, u):

    # Choose file
    file = f'experiments/inserts/u{u}_i10_t10_{dataset}.txt'
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute
    c = count_past_iterations('raw_results/inserts.csv', lambda df: (df['Updates'] == u) & (df['Method'] == method) & (df['Size'] == dataset.upper())).iloc[0]
    for n in range(c+1, REPEATS+1):
        print(f'Executing inserts experiment with {u} updates in history on {dataset.upper()} dataset ({method})... {n}/{REPEATS}')
        result = parse_gprom_timer(execute_gprom(file, 'taxi_trips', method))

        with open('raw_results/inserts.csv', 'a') as mixed:
            mixed.write(f'{u},{grab_timer("TOTAL", result)},{method},{dataset.upper()}\n')

def mixed(dataset, method, u):

    # Choose file
    file = f'experiments/mixed/u{u}_ix10_t10_{dataset}.txt'
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute
    c = count_past_iterations('raw_results/mixed.csv', lambda df: (df['Updates'] == u) & (df['Method'] == method) & (df['Size'] == dataset.upper())).iloc[0]
    for n in range(c+1, REPEATS+1):
        print(f'Executing mixed inserts & deletes experiment with {u} updates in history on {dataset.upper()} dataset ({method})... {n}/{REPEATS}')
        result = parse_gprom_timer(execute_gprom(file, 'taxi_trips', method))

        with open('raw_results/mixed.csv', 'a') as mixed:
            mixed.write(f'{u},{grab_timer("TOTAL", result)},{method},{dataset.upper()}\n')

def multimods(method, m):

    # Choose file
    file = f'experiments/multimod/taxitrips/u100_d10_m{m}_5m.txt'
    if not os.path.isfile(file): raise Exception(f'missing experiment: {file}')

    # Execute

    c = count_past_iterations('raw_results/multimod.csv', lambda df: (df['Modifications'] == m) & (df['Method'] == method)).iloc[0]
    for n in range(c+1, REPEATS+1):
        print(f'Executing multimod experiments with {m} modifications ({method})... {n}/{REPEATS}')
        result = parse_gprom_timer(execute_gprom(file, 'taxi_trips', method))

        with open('raw_results/multimod.csv', 'a') as mixed:
            mixed.write(f'{m},{grab_timer("TOTAL", result)},{method}\n')

# Executor

if __name__ == '__main__':

    #############################
    #### Running experiments ####
    #############################

    # updates

    for method in methods.keys():
        for dataset in ['5m', '50m', 'tpcc', 'ycsb']:
            for u in [10, 20, 50, 100, 200]:
                for t in [0, 10, 25]:
                    updates(dataset, method, u, t)

    for dataset in ['5m', '50m', 'tpcc', 'ycsb']:
        for u in [10, 20, 50, 100, 200]:
            updates_naive(dataset, u)

    # This experiment was superseded by "updates"
    # '''
    # # datasizes
    # for method in methods.keys():
    #     for dataset in ['5m', '50m']:
    #         for communitymax in [8, 24, 77]:
    #             datasizes(dataset, method, communitymax)
    # '''

    # dependents
    for method in ['R+PS', 'R+PS+DS']:
        for d in [1, 10, 100]:
            dependents(method, d)

    # selectivities
    for method in methods.keys():
        for communitymax in [5, 7, 11, 32, 77]:
            selectivities(method, communitymax)

    # inserts
    for method in ['R+PS', 'R+DS', 'R+PS+DS']:
        for dataset in ['5m', '50m']:
            for u in [10, 20, 50, 100, 200]:
                inserts(dataset, method, u)

    # mixed
    for method in ['R+PS', 'R+DS', 'R+PS+DS']:
        for dataset in ['5m', '50m']:
            for u in [10, 20, 50, 100, 200]:
                mixed(dataset, method, u)

    # multimod
    for method in methods.keys():
        for m in [1, 5, 10, 20]:
            multimods(method, m)

    #############################
    ####    Postprocessing   ####
    #############################

    df = pd.read_csv('raw_results/t0_optimizations.csv') # t0_optimizations
    df['Method'] = pd.Categorical(df['Method'], ['R+PS 5M', 'R+DS 5M', 'R+PS+DS 5M', 'R+PS 50M', 'R+DS 50M', 'R+PS+DS 50M', 'R+PS TPCC', 'R+DS TPCC', 'R+PS+DS TPCC', 'R+PS YCSB', 'R+DS YCSB', 'R+PS+DS YCSB'])
    df.groupby(['Updates', 'Method']).mean().sort_values(by=['Method', 'Updates']).to_csv('results/t0_optimizations.csv')

    df = pd.read_csv('raw_results/t10_optimizations.csv') # t10_optimizations
    df = df[-df['Method'].isin(['R 5M', 'R 50M', 'R TPCC', 'R YCSB'])]
    df['Method'] = pd.Categorical(df['Method'], ['R+PS 5M', 'R+DS 5M', 'R+PS+DS 5M', 'R+PS 50M', 'R+DS 50M', 'R+PS+DS 50M', 'R+PS TPCC', 'R+DS TPCC', 'R+PS+DS TPCC', 'R+PS YCSB', 'R+DS YCSB', 'R+PS+DS YCSB'])
    df.groupby(['Updates', 'Method']).mean().to_csv('results/t10_optimizations.csv')

    df = pd.read_csv('raw_results/t25_optimizations.csv') # t25_optimizations
    df['Method'] = pd.Categorical(df['Method'], ['R+PS 5M', 'R+DS 5M', 'R+PS+DS 5M', 'R+PS 50M', 'R+DS 50M', 'R+PS+DS 50M', 'R+PS TPCC', 'R+DS TPCC', 'R+PS+DS TPCC', 'R+PS YCSB', 'R+DS YCSB', 'R+PS+DS YCSB'])
    df.groupby(['Updates', 'Method']).mean().to_csv('results/t25_optimizations.csv')

    df = pd.read_csv('raw_results/optimizations.csv') # optimizations (compare r and r+ps+ds)
    df['Method'] = pd.Categorical(df['Method'], ['R 5M', 'R+PS+DS 5M', 'R 50M', 'R+PS+DS 50M', 'R TPCC', 'R+PS+DS TPCC', 'R YCSB', 'R+PS+DS YCSB'])
    df.groupby(['Updates', 'Method']).mean().sort_values(by=['Method', 'Updates']).to_csv('results/optimizations.csv')
    
    df = pd.read_csv('raw_results/naive.csv') # optimizations (compare naive and r+ps+ds)
    df = df[-df['Method'].isin(['R 5M', 'R 50M', 'R TPCC', 'R YCSB'])]
    df['Method'] = pd.Categorical(df['Method'], ['Naive 5M', 'R+PS+DS 5M', 'Naive 50M', 'R+PS+DS 50M', 'Naive TPCC', 'R+PS+DS TPCC', 'Naive YCSB', 'R+PS+DS YCSB'])
    df.groupby(['Updates', 'Method']).mean().sort_values(by=['Method', 'Updates']).to_csv('results/naive.csv')

    df = pd.read_csv('raw_results/naive_breakdown.csv') # optimizations (compare naive and r+ps+ds)
    df['Time Slice'] = pd.Categorical(df['Time Slice'], ['Creation', 'Exe', 'Delta'])
    df['Size'] = pd.Categorical(df['Size'], ['5M', '50M'])
    df.groupby(['Updates', 'Time Slice', 'Size']).mean().sort_values(by=['Updates', 'Size', 'Time Slice']).to_csv('results/naive_breakdown.csv')
    # mahif_breakdown

    df = pd.read_csv('raw_results/dependent_updates.csv').groupby(['Percentage of Dependent Updates', 'Method']).mean().to_csv('results/dependent_updates.csv') # dependent updates

    community_area_to_selectivity = {5: 3, 7: 12, 11: 38, 32: 68, 77: 80}
    df = pd.read_csv('raw_results/affected_data.csv') # dependent updates
    df['Community Max'] = df['Community Max'].apply(lambda e: community_area_to_selectivity[e])
    df.rename(columns={'Community Max': 'T'}, inplace=True)
    df.groupby(['T', 'Method']).mean().to_csv('results/affected_data.csv')

    df = pd.read_csv('raw_results/inserts.csv') # inserts
    df['Method'] = pd.Categorical(df['Method'], ['R+PS', 'R+DS', 'R+PS+DS'])
    df['Size'] = pd.Categorical(df['Size'], ['5M', '50M'])
    df.groupby(['Updates', 'Method', 'Size']).mean().sort_values(by=['Updates', 'Size', 'Method']).to_csv('results/inserts.csv')

    df = pd.read_csv('raw_results/mixed.csv') # mixed
    df['Method'] = pd.Categorical(df['Method'], ['R+PS', 'R+DS', 'R+PS+DS'])
    df['Size'] = pd.Categorical(df['Size'], ['5M', '50M'])
    df.groupby(['Updates', 'Method', 'Size']).mean().sort_values(by=['Updates', 'Size', 'Method']).to_csv('results/mixed.csv')

    df = pd.read_csv('raw_results/multimod.csv') # multimod
    df['Method'] = pd.Categorical(df['Method'], ['R', 'R+PS', 'R+DS', 'R+PS+DS'])
    df.groupby(['Modifications', 'Method']).mean().sort_values(by=['Modifications', 'Method']).to_csv('results/multimod.csv')


    #############################
    ####       Plotting      ####
    #############################

    better_plotter.plot()

    #############################
    ####   Compiling LaTeX   ####
    #############################

    call(["pdflatex", "historical_whatif.tex", "-interaction=batchmode"], cwd="./paper/")