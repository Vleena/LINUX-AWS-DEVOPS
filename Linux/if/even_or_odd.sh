#!/bin/bash

########################
#Author: Vleena
#Description: Check if the given number is odd or even
#Version: V1

#######################

set -e

read -p "Enter a number:" num

if [ $((num%2)) -eq 0 ]; then 
	echo "$num is a even number"
else
	echo "$num is a odd number"
fi
