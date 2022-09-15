# Efficient Answering of Historical What-if Queries

```

         ⓪                       ①                       ②                        ③
    Download data       Install dependencies         Install GProM         Run Experiment Suite

```

## Reproducibility Package

Our system consists of three parts:
* GProM
* PostgreSQL
* IBM CPLEX

This document will detail in the following sections how to set up each component appropriately in order to run the suite of experiments.

The scripts were designed for usage in a container or virtual machine running **Ubuntu 22.04.1 LTS "jammy"**.

**Caveats:**

- The scripts use `apt` to install packages and have been tested with this particular version of Ubuntu
- The scripts use systemd to start / stop postgres

## Components

### PostgreSQL

A script has been supplied to download & initialize the databases and tables required to run the experiments.
A user `whatif` has password `mahif` to access the databases `whatif`, `tpcc` and `ycsb` on port `5453`.

⓪ First, you will need to download the data (consider this step 0!) from https://drive.google.com/drive/folders/1QbHYupkAqraZhZSlWwz8FU1As9WNmpxe?usp=sharing and place them in the `data` folder inside the repository.

① Then, do `./step_1_install_dependencies.sh` once you have added the data. **Note: The script should be run from the repository folder.**

### IBM CPLEX
IBM CPLEX is required to run the program slicing optimization within GPRoM.
We are unable to distribute CPLEX in our package due to licensing restrictions.

⚠ Please see http://ibm.biz/cplex-free-for-students and https://www.ibm.com/support/pages/downloading-ibm-ilog-cplex-optimization-studio-v12100 in order to install CPLEX in the system (or container).
Please note we use **IBM ILOG CPLEX Optimization Studio V12.10.0 for Linux x86-64 Multilingual**, which is part number `CC439ML`.
The included scripts expect CPLEX to be installed to `/opt/ibm/ILOG/CPLEX_Studio1210`. The installer should present an option to choose the location.

We are unable to provide a script for this.

### GProM

A script is included to execute the Autotools build scripts to configure GProM to run the experiments.

② Do `./step_2_install_gprom.sh` from the repository main folder.

## Running Experiment Suite

③ Executing `python3 step_3_experiment_harness.py` will run the experiment tool and rebuild the LaTeX document.
Should the tool fail during its execution, it can be rerun and will resume from its last state.

## Running Your Own Code

From the directory of this repository, running `./gprom/bin/gprom -backend postgres -host localhost -port 5432 -user whatif -passwd mahif -db whatif` will place you into an interactive shell where you can evaluate SQL queries within GProM.

A historical what-if query has syntax `WHAT IF (stmt; ...;) REPLACE (1, ...) IN (stmt; ...;);`
which replaces in the history given after `IN` the statements at positions `1, ...` (1-indexed) with the statements provided after `IF`. 

For example:

```sql
WHAT IF (UPDATE f SET fare = fare + 44 WHERE pickup_community_area <= 1;)
REPLACE (1)
IN (UPDATE f SET fare = fare + 24 WHERE pickup_community_area <= 1;
UPDATE f SET trip_total = trip_total + 35 WHERE pickup_community_area = 16;
UPDATE f SET tolls = tolls + 40 WHERE pickup_community_area = 16;
UPDATE f SET fare = fare + 77 WHERE pickup_community_area = 16;
UPDATE f SET tolls = tolls + 32 WHERE pickup_community_area = 16;
UPDATE f SET fare = fare + 56 WHERE pickup_community_area <= 1;
UPDATE f SET trip_total = trip_total + 52 WHERE pickup_community_area = 16;
UPDATE f SET extras = extras + 84 WHERE pickup_community_area = 16;
UPDATE f SET trip_total = trip_total + 8 WHERE pickup_community_area = 16;
UPDATE f SET tolls = tolls + 39 WHERE pickup_community_area = 16;
UPDATE f SET trip_total = trip_total + 7 WHERE pickup_community_area = 16;);
```

This query will test the hypothetical modification (`UPDATE f SET fare = fare + 44 WHERE pickup_community_area <= 1;`) that will replace the first update in the transactional history (`UPDATE f SET fare = fare + 24 WHERE pickup_community_area <= 1;`).


