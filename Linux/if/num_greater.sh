#!/bin/bash

################################
#Author: Vleena
#Description: check if a number is greater than 10 or not
#Version: V1

###############################

read -p "enter a number: " num
if [ $num -gt 10 ]; then
	echo "Number is greater than 10"
else
	echo "Number is not greater than 10"
fi
