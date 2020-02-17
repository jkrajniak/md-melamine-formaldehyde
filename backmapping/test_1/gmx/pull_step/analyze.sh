#! /bin/sh
#
# analyze.sh
# Copyright (C) 2016 Jakub Krajniak <jkrajniak@gmail.com>
#
# Distributed under terms of the GNU GPLv3 license.
#

OUT="data.csv"
echo "box-z P-zz" > $OUT
S="`find -type d -name "pull_*" | cut -f2 -d'_' | sort | xargs`"
KEYWORDS="Box-Z Pres-ZZ Box-X Box-Y Pres-XX Pres-YY"

echo $KEYWORDS | tr ' ' '\n' | g_energy_mpi -f pull_0.00/ener.edr | tr -s ' ' | cut -f1 -d' ' | egrep "(`echo $KEYWORDS | tr ' ' '|'`)" | xargs > $OUT

for p in $S; do
    echo $p
    cd pull_${p}
    echo $KEYWORDS | tr ' ' '\n' | g_energy_mpi
    cd ..
    g_analyze_mpi -f pull_${p}/energy.xvg > analyze.tmp
    DATA=""
    IDX=1
    for k in $KEYWORDS; do
        SS="`cat analyze.tmp | grep \"^SS${IDX} \" | tr -s ' ' | cut -f2,4 -d' ' | tr -d '\n'`"
        DATA="$DATA ${SS}"
        let "IDX++"
    done
    echo "${DATA}" >> $OUT
done
