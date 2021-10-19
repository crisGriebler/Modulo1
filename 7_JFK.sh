#!/bin/bash

#Mostrar o tempo total de atrasos para a decolagem de vôos no aeroporto JFK, de Nova Iorque.
echo "The sum of all delay departures from JFK airport was $(grep JFK 2006-sample.csv| cut -d ',' -f6 | wc -l) minutes."
