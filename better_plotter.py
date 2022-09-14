import pandas as pd
import seaborn as sns
import matplotlib
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.ticker as mticker
import numpy as np


def plot():

    colors = {
        'R': "#0072B2", 
        'R+PS': "#56B4E9", 
        'R+DS': "#009E73", 
        'R+PS+DS': "#F0E442", 
        'R 5M': "#0072B2", 
        'R+PS 5M': "#56B4E9", 
        'R+DS 5M': "#009E73", 
        'R+PS+DS 5M': "#F0E442",
        'R 50M': "#0072B2", 
        'R+PS 50M': "#56B4E9", 
        'R+DS 50M': "#009E73", 
        'R+PS+DS 50M': "#F0E442",
        'R TPCC': "#0072B2", 
        'R+PS TPCC': "#56B4E9", 
        'R+DS TPCC': "#009E73", 
        'R+PS+DS TPCC': "#F0E442",
        'R YCSB': "#0072B2", 
        'R+PS YCSB': "#56B4E9", 
        'R+DS YCSB': "#009E73", 
        'R+PS+DS YCSB': "#F0E442",
        'Naive 5M': '#CC79A7',
        'Naive 50M': '#CC79A7',
        'Naive TPCC': '#CC79A7',
        'Naive YCSB': '#CC79A7',
    }

    r = mpatches.Patch(color='#0072B2', label='R')
    rps = mpatches.Patch(color='#56B4E9', label='R+PS')
    rds = mpatches.Patch(color='#009E73', label='R+DS')
    rpsds = mpatches.Patch(color='#F0E442', label='R+PS+DS')
    naivePatch = mpatches.Patch(color='#CC79A7', label='Naive')
    taxi5m = mpatches.Patch(facecolor='white', edgecolor='black', hatch='', label='Taxi (5M)')
    taxi50m = mpatches.Patch(facecolor='white', edgecolor='black', hatch='..', label='Taxi (50M)')
    tpcc = mpatches.Patch(facecolor='white', edgecolor='black', hatch='//', label='TPCC')
    ycsb = mpatches.Patch(facecolor='white', edgecolor='black', hatch='**', label='YCSB')

    plt.rcParams['pdf.fonttype'] = 42
    plt.rcParams['ps.fonttype'] = 42

    plt.clf()
    affected_data = pd.read_csv('results/affected_data.csv')

    sns.set_style("whitegrid")

    g = sns.catplot(
        kind="bar",
        data=affected_data,
        x="T", 
        y="Runtime", 
        hue="Method",
        height=2.25, aspect=1.4,
        palette=colors
    )
    g.ax.set_xlabel("% Selectivity (T)")
    #g.axes[0][0].legend(loc='upper left', fontsize=7)

    plt.subplots_adjust(bottom=0.25)
    plt.savefig('paper/imgs/felix_affected_data.pdf', dpi=200)

    plt.clf()
    naive = pd.read_csv('results/naive.csv')

    matplotlib.rcParams['hatch.linewidth'] = 2

    sns.set(rc={'figure.figsize':(6,3)})
    sns.set_style("whitegrid")

    g = sns.barplot(x="Updates", y="Runtime", hue="Method", data=naive, palette=colors, ci=None)
    g.set_yscale("log")
    bars = g.patches
    pattern = ['', '', '..', '..', '//', '//', '*', '*']
    pattern_bars = np.repeat(pattern, 5)
    plt.legend(loc='upper left', handles=[naivePatch, rpsds, taxi5m, taxi50m, tpcc, ycsb], ncol=3, prop={'size': 8})

    for p, b in zip(pattern_bars, bars):
        b.set_hatch(p)

    g.set_xlabel("# Updates")

    g.get_yaxis().set_major_formatter(mticker.ScalarFormatter())

    plt.subplots_adjust(bottom=0.2)
    plt.savefig('paper/imgs/felix_naive.pdf', dpi=200)

    plt.clf()
    t25_relation_size = pd.read_csv('results/t25_relation_size.csv')

    sns.set_style("whitegrid")

    g = sns.catplot(
        kind="bar",
        data=t25_relation_size,
        x="Relation Size", 
        y="Runtime", 
        hue="Method",
        height=2.25, aspect=1.4,
        palette=colors
    )
    g._legend.remove()
    plt.legend(loc='upper left', fontsize=8)

    plt.subplots_adjust(bottom=0.3)
    plt.savefig('paper/imgs/felix_t25_relation_size.pdf', dpi=200)

    plt.clf()
    dependent_updates = pd.read_csv('results/dependent_updates.csv')

    sns.set_style("whitegrid")

    g = sns.catplot(
        kind="bar",
        data=dependent_updates,
        x="Percentage of Dependent Updates", 
        y="Runtime", 
        hue="Method",
        height=2.25, aspect=1.4,
        palette=colors
    )
    g._legend.remove()
    g.axes[0][0].legend()
    g.ax.set_xlabel("% Dependent Updates (D)")

    plt.subplots_adjust(bottom=0.25)
    plt.savefig('paper/imgs/felix_dependent_updates.pdf', dpi=200)

    plt.clf()
    t0_optimizations = pd.read_csv('results/t0_optimizations.csv')

    sns.set_style("whitegrid")

    fig, axes = plt.subplots(1, 4, figsize=(6, 2), sharey=True)

    order = [1, 0, 2, 3]

    t0_optimizations[['Method', 'Dataset']] = t0_optimizations['Method'].str.split(expand=True)
    sns.set(rc={'figure.figsize':(2,2)})
    for i, (dataset, dataset_df) in enumerate(t0_optimizations.groupby('Dataset')):
        g = sns.barplot(ax=axes[order[i]], x="Updates", y="Runtime", hue="Method", data=dataset_df, palette=colors, ci=None)
        g.set_yscale("log")
        g.legend([], frameon=False)
        axes[order[i]].set_title(dataset)
        axes[order[i]].set_xlabel("# Updates")

    for i in range(1, 4):
        axes[i].set_ylabel("")
    plt.tight_layout(pad=0)
    plt.legend().set_visible(False)

    axes[0].yaxis.set_major_formatter(mticker.ScalarFormatter())

    plt.subplots_adjust(left=0.11, bottom=0.25, top=0.88)
    plt.savefig('paper/imgs/felix_t0_optimizations.pdf', dpi=200)

    plt.clf()
    t10_optimizations = pd.read_csv('results/t10_optimizations.csv')

    sns.set_style("whitegrid")

    fig, axes = plt.subplots(1, 4, figsize=(6, 2), sharey=True)

    t10_optimizations[['Method', 'Dataset']] = t10_optimizations['Method'].str.split(expand=True)
    sns.set(rc={'figure.figsize':(2,2)})
    for i, (dataset, dataset_df) in enumerate(t10_optimizations.groupby('Dataset')):
        g = sns.barplot(ax=axes[order[i]], x="Updates", y="Runtime", hue="Method", data=dataset_df, palette=colors, ci=None)
        g.set_yscale("log")
        g.legend([], frameon=False)
        axes[order[i]].set_title(dataset)

    for i in range(4):
        axes[i].set_ylabel("")
        axes[i].set_xlabel("# Updates")
    plt.tight_layout(pad=0)
    plt.legend().set_visible(False)

    axes[1].yaxis.set_major_formatter(mticker.ScalarFormatter())
    axes[1].set_ylabel("")

    plt.subplots_adjust(left=0.09, bottom=0.25, top=0.88)
    plt.savefig('paper/imgs/felix_t10_optimizations.pdf', dpi=200)

    plt.clf()
    t25_optimizations = pd.read_csv('results/t25_optimizations.csv')

    sns.set_style("whitegrid")

    fig, axes = plt.subplots(1, 4, figsize=(6, 2), sharey=True)

    t25_optimizations[['Method', 'Dataset']] = t25_optimizations['Method'].str.split(expand=True)
    sns.set(rc={'figure.figsize':(2,2)})
    for i, (dataset, dataset_df) in enumerate(t25_optimizations.groupby('Dataset')):
        g = sns.barplot(ax=axes[order[i]], x="Updates", y="Runtime", hue="Method", data=dataset_df, palette=colors, ci=None)
        g.set_yscale("log")
        g.legend([], frameon=False)
        axes[order[i]].set_title(dataset)
        axes[order[i]].set_xlabel("# Updates")

    for i in range(4):
        axes[i].set_ylabel("")
    plt.tight_layout(pad=0)
    plt.legend(ncol=1, prop={'size': 8})

    axes[0].yaxis.set_major_formatter(mticker.ScalarFormatter())
    axes[0].set_ylabel("")

    plt.subplots_adjust(left=0.09, bottom=0.25, top=0.88)
    plt.savefig('paper/imgs/felix_t25_optimizations.pdf', dpi=200)

    plt.clf()
    optimizations = pd.read_csv('results/optimizations.csv')

    sns.set(rc={'figure.figsize':(6,3)})
    sns.set_style("whitegrid")

    g = sns.barplot(x="Updates", y="Runtime", hue="Method", data=optimizations, palette=colors, ci=None)
    g.set_yscale("log")
    bars = g.patches
    pattern = ['', '', '..', '..', '//', '//', '*', '*']
    pattern_bars = np.repeat(pattern, 5)
    plt.legend(loc='upper left', handles=[r, rpsds, taxi5m, taxi50m, tpcc, ycsb], ncol=3, prop={'size': 8})

    for p, b in zip(pattern_bars, bars):
        b.set_hatch(p)

    g.set_xlabel("# Updates")

    g.get_yaxis().set_major_formatter(mticker.ScalarFormatter())

    plt.subplots_adjust(bottom=0.2)
    plt.savefig('paper/imgs/felix_optimizations.pdf', dpi=200)

    plt.clf()
    mahif_breakdown = pd.read_csv('results/mahif_breakdown.csv')
    grouped = mahif_breakdown.groupby(['Updates', 'Method', 'Size'])
    five = mahif_breakdown[mahif_breakdown['Size'] == '5M'].pivot(index='Updates', columns='Time Slice', values='Runtime')
    fifty = mahif_breakdown[mahif_breakdown['Size'] == '50M'].pivot(index='Updates', columns='Time Slice', values='Runtime')

    sns.set_style("whitegrid")
    g = sns.catplot(x="Updates", y="Runtime",
                    hue="Time Slice", col="Size",
                    data=mahif_breakdown, kind="bar",
                    height=2, aspect=1, ci=None, legend_out=False)
    g.fig.get_axes()[0].set_yscale('log')
    g.fig.subplots_adjust(wspace=0.1, hspace=0)
    g.axes[0][0].legend(loc='upper left', fontsize=7)

    g.set_xlabels("# Updates")
    g.axes[0][0].set_title('5M')
    g.axes[0][1].set_title('50M')

    for axes in g.axes.flat:
        axes.get_yaxis().set_major_formatter(mticker.ScalarFormatter())


    plt.subplots_adjust(bottom=0.2)
    plt.savefig('paper/imgs/felix_mahif_breakdown.pdf', dpi=200)

    plt.clf()
    naive_breakdown = pd.read_csv('results/naive_breakdown.csv')
    grouped = naive_breakdown.groupby(['Updates', 'Time Slice', 'Size'])

    sns.set_style("whitegrid")

    g = sns.catplot(x="Updates", y="Runtime",
                    hue="Time Slice", col="Size",
                    data=naive_breakdown, kind="bar",
                    height=2, aspect=1, ci=None, legend_out=False)
    g.fig.get_axes()[0].set_yscale('log')
    g.fig.subplots_adjust(wspace=0.1, hspace=0)
    g.axes[0][0].legend().set_visible(False)
    g.axes[0][1].legend(loc='upper right', fontsize=7)

    g.set_xlabels("# Updates")
    g.axes[0][0].set_title('5M')
    g.axes[0][1].set_title('50M')

    for axes in g.axes.flat:
        axes.get_yaxis().set_major_formatter(mticker.ScalarFormatter())
        
    plt.subplots_adjust(left=0.2, bottom=0.3)
    plt.savefig('paper/imgs/felix_naive_breakdown.pdf', dpi=200)

    plt.clf()
    inserts = pd.read_csv('results/inserts.csv')

    sns.set_style("whitegrid")

    g = sns.catplot(x="Updates", y="Runtime",
                    hue="Method", col="Size",
                    data=inserts, kind="bar",
                    height=2, aspect=1, ci=None, palette=colors, legend_out=False)    
    g.fig.get_axes()[0].set_yscale('log')
    g.fig.subplots_adjust(wspace=0.1, hspace=0)
    g.axes[0][0].legend(fontsize=7, loc='upper left')


    g.set_xlabels("# Updates")
    g.axes[0][0].set_title('5M')
    g.axes[0][1].set_title('50M')

    for axes in g.axes.flat:
        axes.get_yaxis().set_major_formatter(mticker.ScalarFormatter())

    plt.subplots_adjust(left=0.2, bottom=0.3)
    plt.savefig('paper/imgs/felix_inserts.pdf', dpi=200)

    plt.clf()
    mixed = pd.read_csv('results/mixed.csv')

    sns.set_style("whitegrid")

    g = sns.catplot(x="Updates", y="Runtime",
                    hue="Method", col="Size",
                    data=mixed, kind="bar",
                    height=2, aspect=1, ci=None, palette=colors, legend_out=False)    
    g.fig.get_axes()[0].set_yscale('log')
    g.fig.subplots_adjust(wspace=0.1, hspace=0)
    g.axes[0][0].legend(fontsize=7, loc='upper left')

    g.set_xlabels("# Updates")
    g.axes[0][0].set_title('5M')
    g.axes[0][1].set_title('50M')

    for axes in g.axes.flat:
        axes.get_yaxis().set_major_formatter(mticker.ScalarFormatter())

    plt.subplots_adjust(left=0.2, bottom=0.3)
    plt.savefig('paper/imgs/felix_mixed.pdf', dpi=200)

    plt.clf()
    multimod = pd.read_csv('results/multimod.csv')


    sns.set(rc={'figure.figsize':(3.15,2.25)})
    sns.set_style("whitegrid")

    g = sns.barplot(x="Modifications", y="Runtime", hue="Method", data=multimod, palette=colors, ci=None)
    plt.legend(loc='upper left', handles=[r, rps, rds, rpsds], ncol=2, prop={'size': 8})

    for p, b in zip(pattern_bars, bars):
        b.set_hatch(p)

    g.set_xlabel("# Modifications")

    plt.subplots_adjust(bottom=0.25)
    plt.subplots_adjust(left=0.22)
    plt.savefig('paper/imgs/felix_multimod.pdf', dpi=200)