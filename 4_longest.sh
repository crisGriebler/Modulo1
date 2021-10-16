#!/bin/bash

# Vôo MAIS LONGO.

###################################################

# Selecionando a linha desejada no arquivo original
# A coluna #14 corresponde ao TEMPO DE VOO.

#tail -n +2 2006-sample.csv | sort -t, -k14,14n

##################################################

# Coluna #9 é a Companhia Aérea
echo "O vôo de MAIOR DURAÇÃO o da Companhia Aérea $(tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f9 | tail -n1)."
#tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f9 | tail -n1

################################################################################################

# Coluna #10 é o Número do Voo
echo "Número $(tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f10 | tail -n1)."
#tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f10 | tail -n1

###############################################################################################

# Coluna #14 é o TEMPO DE VOO
echo "Com um total de $(tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f14 | tail -n1) minutos de atraso."
#tail -n +2 2006-sample.csv | sort -t, -k14,14n | cut -d ',' -f14 | tail -n1


