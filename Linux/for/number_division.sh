#!/bin/bash


##########################
#Author: Vleena
#Description: Write a shell script to print the numbers divided by 3 &5 and not 15 in the range of 1 to 100
#Version: V1

#####################

set -e

for i in $(seq 1 100)
do
	if ((i%3 == 0 || i%5 == 0)) && ((i%15!=0)); then
		echo "$i"
	fi
done
