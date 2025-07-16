#!/bin/bash


#########################
# Author: Vleena
# Description: print the numbers divided by 3 &5 and not 15
# version : V1

############################

read -p "Enter the range:" n
for ((i=1;i<=$n;i++)); do
	if (( (i%3==0 || i%5==0) && i%15!=0 )); then
		echo $i
	fi
done
