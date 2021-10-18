#!/bin/bash

# Vôo com maior atraso na saida.

###################################################

# É necessário identificar qual a coluna que representa atrasos na saida.
# A coluna #17 corresponde aos atrasos na saída
#head -n -2 2006-sample.csv # show from the 2nd line to the end
#| sort -n, -k16

##################################################


# Coluna #9 é a Companhia Aérea
echo "O vôo com maior atraso na saída foi o da Companhia Aérea $(tail -n +2 2006-sample.csv | sort --field-separator=, --key=16n | cut -d ',' -f9 | tail -n1)."
#tail -n +2 2006-sample.csv | sort --field-separator=, --key=16n | cut -d ',' -f9 | tail -n1 

###############################################################################>
######### --key=16n or -k16 sort lines by the column 16.
# Coluna #10 é o Número do Voo
echo "Número $(tail -n +2 2006-sample.csv | sort --field-separator=, -k16 | cut -d ',' -f10 | tail -n1)."
#tail -n +2 2006-sample.csv | sort -t, -k16,16n | cut -d ',' -f10 | tail -n1

###############################################################################>
############ sort -n = sort the lines numerically rather than alphabeticallly
# Coluna #17 é o Tempo de Atraso na saída
echo "Este voô saiu com  $(tail -n +2 2006-sample.csv | sort -n --field-separator=, -k16 | cut -d ',' -f15 | tail -n1) minutos de atraso. "
#tail -n +2 2006-sample.csv | sort -t, -k16,16n | cut -d ',' -f15 | tail -n1


