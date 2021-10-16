#!/bin/bash

# Tempo total de atrasos para POUSOS no Aeroporto Internacional de Los Angeles

# BUSCA PELO AEROPORTO DE LOS ANGELES (LAX)

#grep -w "LAX" 2006-sample.csv | cut -d ',' -f15 > los_angeles.csv

# LIMPEZA DAS CÉLULAS VAZIAS OU COM VALORES NEGATIVOS

#grep -v '^$' los_angeles.csv > los_angelesG.csv
#grep -v '-' los_angelesG.csv > los_angeles.csv

# APRESENTAÇÃO DOS RESULTADOS

#echo 'O tempo total de atrasos para POUSOS no Aeroporto Internacional de Los Angeles foi de'
#cat los_angeles.csv | paste -sd+ | bc
#echo "minutos."

#rm los_angeles.csv
#rm los_angelesG.csv


####################################################################################

#UTILIZANDO GREP CONSECUTIVAMENTE

echo "O tempo total de atrasos para POUSOS no Aeroporto Internacional de Los Angeles foi de $(grep -w "LAX" 2006-sample.csv | cut -d ',' -f15 | grep -v '^$' | grep -v '-' | paste -sd+ | bc ) minutos."
#grep -w 'LAX' 2006-sample.csv | cut -d ',' -f15 | grep -v '^$' | grep -v '-' | paste -sd+ | bc


