#!/bin/sh

# Install dependencies
sudo apt update
sudo apt install build-essential postgresql libpq-dev texlive-latex-extra texlive-science python3 python3-pip autoconf automake libtool libreadline-dev libsqlite3-dev flex bison gcc-9 -y
pip3 install -r requirements.txt

# Postgres
sudo systemctl start postgresql.service
sudo -u postgres psql < database_setup.sql
export PGPASSWORD=mahif
pg_restore -h localhost -p 5432 -U whatif -d tpcc data/tpcc.bin
pg_restore -h localhost -p 5432 -U whatif -d ycsb data/ycsb.bin

# Tell user to install CPLEX
echo "\n\n\nDependencies for GProM have been installed!"
echo "Please see the README for instructions to install CPLEX before moving onto the next step..."