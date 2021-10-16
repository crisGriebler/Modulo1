#!/bin/bash

# Vôo com maior atraso na Chegada.

###################################################

# Selecionando a linha desejada no arquivo original
# A coluna #16 corresponde aos atrasos na saída.

#tail -n +2 2006-sample.csv | sort -t, -k15,15n

##################################################

# Coluna #9 é a Companhia Aérea
echo "O vôo com maior atraso na CHEGADA foi o da Companhia Aérea $(tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f9 | tail -n1)."
#tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f9 | tail -n1

################################################################################################

# Coluna #10 é o Número do Voo
echo "Número $(tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f10 | tail -n1)."
#tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f10 | tail -n1

###############################################################################################

# Coluna #16 é o Tempo de Atraso na Chegada
echo "Com um total de $(tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f15 | tail -n1) minutos de atraso."
#tail -n +2 2006-sample.csv | sort -t, -k15,15n | cut -d ',' -f15 | tail -n1


