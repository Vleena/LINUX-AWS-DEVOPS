#!/bin/bash


##########################
#Author: Vleena
#Description: check if number is positive or negative or equal to zero
#Version: V1

###########################

set -e

read -p "Enter a number: " num
if [ $num -gt 0 ]; then
	echo "$num is positive number"
elif [ $num -lt 0 ]; then
	echo "$num is negative number"
else
	echo "number is equal to zero"
fi
