#!/bin/sh

cd ~
git clone -b whatif https://github.com/IITDBGroup/gprom.git
cd gprom
./autogen.sh
./configure --disable-java --disable-oracle --disable-monetdb --enable-cplex --with-cplex=/opt/ibm/ILOG/CPLEX_Studio1210/cplex/ --with-libpq=/usr/lib/x86_64-linux-gnu --with-libpq-headers=/usr/include/postgresql --prefix=~/gprom
make && make install