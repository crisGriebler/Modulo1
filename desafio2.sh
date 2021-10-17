#!/bin/bash

# Pesquisa de atrasos de cada companhia.

# CRIANDO UMA LISTA COM OS NOMES DE TODOS OS AEROPORTOS CONTIDOS NO ARQUIVO ORIGINAL
tail -n +2 2006-sample.csv | cut -d ',' -f17 | sort | uniq > airports.csv

# BUSCANDO NO ARQUIVO ORIGINAL PELOS NOMES DOS AEROPORTOS

filename='airports.csv'
while read line;
do
cut -d ',' -f17 2006-sample.csv | grep -w $line | uniq > airp_time.csv
cut -d ',' -f16,17 2006-sample.csv | grep -w $line | cut -d ',' -f1 | sort | grep -v '^$' | grep -v '-' | paste -sd+ | bc >> airp_time.csv
paste -sd ',' airp_time.csv >> result.csv
done < $filename

echo "O aeroporto com maior atraso foi o $(sort -t, -k2 -n result.csv | cut -d ',' -f1 | tail -n1)."
#sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f1

echo "Com um total de $(sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f2) minutos."
#sort -t, -k2 -n result.csv | tail -n1 | cut -d ',' -f2

rm airports.csv
rm airp_time.csv
rm result.csv



