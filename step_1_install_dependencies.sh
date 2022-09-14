#!/bin/sh

# Install dependencies
sudo apt update
sudo apt install build-essential postgresql libpq-dev texlive-latex-extra -y
pip install -r requirements.txt

# Postgres
sudo systemctl start postgresql.service
sudo -u postgres psql -a -f database_setup.sql
export PGPASSWORD=mahif
psql -h localhost -p 5432 -U whatif -f data/tpcc.sql
psql -h localhost -p 5432 -U whatif -f data/ycsb.sql

# Tell user to install CPLEX
echo "\n\n\nDependencies for GProM have been installed!"
echo "Please see the README for instructions to install CPLEX before moving onto the next step..."