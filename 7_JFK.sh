#!/bin/bash

###########################################################
#Mostrar o tempo total de atrasos para a decolagem de vôos no aeroporto JFK, de Nova Iorque.
echo "The sum of all delay departures from JFK airport was $(cat 2006-sample.csv | cut -d ',' -f16,17 | grep -w JFK | cut -d ',' -f1 | grep -v '-'| grep -v '^$' | paste -sd+ | bc) minutes."



### cat 2006-sample.csv | cut -d ',' -f16,17 | grep -w JFK | cut -d ',' -f1 | grep -v '-'| grep -v '^$' | paste -sd+ | bc

