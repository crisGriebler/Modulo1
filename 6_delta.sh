#!/bin/bash

# ATRASOS DA DELTA

tail -n +2 2006-sample.csv | grep -w "DL" | cut -d ',' -f15 > delta1.csv
tail -n +2 2006-sample.csv | grep -w "DL" | cut -d ',' -f16 > delta2.csv

grep -v '^$' delta1.csv > delta1g.csv
grep -v '-' delta1g.csv > delta1.csv
cat delta1.csv | paste -sd+ | bc > columns_delta.csv

grep -v '^$' delta2.csv > delta2g.csv
grep -v '-' delta2g.csv > delta2.csv
cat delta2.csv | paste -sd+ | bc >> columns_delta.csv

echo "A companhia DELTA se atrasou $(cat columns_delta.csv | paste -sd+ | bc) minutos."
#cat columns_delta.csv | paste -sd+ | bc

rm delta1.csv
rm delta2.csv
rm delta1g.csv
rm delta2g.csv
rm columns_delta.csv

########################################################################################
########################################################################################

# ATRASOS DA DELTA (MÉTODO #2)

for i in {15..16}
do
tail -n +2 2006-sample.csv | grep -w "DL" | cut -d ',' -f$i > delta.csv
grep -v '^$' delta.csv > deltag.csv
grep -v '-' deltag.csv > delta.csv
cat delta.csv | paste -sd+ | bc >> columns_delta.csv
done

echo "(OPÇÃO #2) A companhia DELTA se atrasou $(cat columns_delta.csv | paste -sd+ | bc) minutos."

rm delta.csv
rm deltag.csv
rm columns_delta.csv


