#!/bin/bash


#################
#Author: Vleena
# Description : print the odd numbers from 1 to 4  
# Version: V1

###########################

for (( i=1; i<=10; i++)); do
	if (( i%2 == 0)); then
		continue
	elif (( i == 5 )); then
		break
	else
		echo $i
	fi
done

