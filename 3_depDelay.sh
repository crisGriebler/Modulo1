#!/bin/bash

# Latest departure time flight

###################################################

# É necessário identificar qual a coluna que representa atrasos na saida.
# A coluna #17 corresponde aos atrasos na saída
# | sort -n, -k16

##################################################
# O -f9 seleciona a coluna da company que teve o voo mais atrasado.
# $(tail -n +2 2006-sample.csv | sort --field-separator=, --key=16n | cut -d ',' -f9 | tail -n1)."

###############################################################################>
###abreviacao de comando ############ --key=16n or -k16 sort lines by the column 16.
# O -f10  seleciona o número do voo que teve o voo mais atrasdo.
#$(tail -n +2 2006-sample.csv | sort --field-separator=, -k16 | cut -d ',' -f10 | tail -n1)


###############################################################################>
############ sort -n = sort the lines numerically rather than alphabeticallly
# O -f15 seleciona os minutos de atrasos do voo mais atrasado.
# $(tail -n +2 2006-sample.csv | sort -n --field-separator=, -k16 | cut -d ',' -f15 | tail -n1)

echo "The flight number $(tail -n +2 2006-sample.csv | sort --field-separator=, -k16 | cut -d ',' -f10 | tail -n1) from the company $(tail -n +2 2006-sample.csv | sort --field-separator=, --key=16n | cut -d ',' -f9 | tail -n1) was the latest flight with $(tail -n +2 2006-sample.csv | sort -n --field-separator=, -k16 | cut -d ',' -f15 | tail -n1) minutes late than its scheduled time."

