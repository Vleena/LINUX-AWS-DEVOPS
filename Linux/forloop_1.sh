#!/bin/bash


######################
# Author: Vleena
# Description: Display all the numbers in a range which are divisible by 2 
# Version: v1

###################

read -p "Enter a range:" n
for ((i=1;i<=n;i++));do
	if(( i%2==0 )); then
		echo $i
	fi
done
