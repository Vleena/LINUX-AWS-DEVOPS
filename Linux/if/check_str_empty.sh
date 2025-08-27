#!/bin/bash

########################
#Author: Vleena
#Description: check if the given string is empty or not
#Version: V1

##########################

set -e

read -p "Enter a string: " str

if [ -z $str ]; then
	echo "String is empty"
else
	echo "string is not empty"
fi
