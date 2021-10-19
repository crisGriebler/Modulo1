#!/bin/bash

#Contar quantos vôos precisaram ser redirecionados (Diverted).
echo "There were $(grep 1 2006-sample.csv | sort -t, -k24,24n | cut -d ',' -f24 | wc -l) diverted flights."
