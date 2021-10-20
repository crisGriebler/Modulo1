#!/bin/bash
# The command read identify the parameter as companyname
read -p "Which company are you interested in? " companyname

#grep $companyname 2006-sample.csv | cut -d ',' -f13 | wc -l 

echo "The company $companyname had $(grep $companyname 2006-sample.csv | cut -d ',' -f13 | wc -l) late flights".
