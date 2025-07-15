#!/bin/bash

##################
#Author: Vleena
#Description: checking if the user can vote or not
# Version: V1

#######################

read -p "Enter your name:" name
read -p "Enter your age:" age
if [ $age -ge 18 ]; then
	echo "$name is eligible to vote"
else
	echo "$name is not eligible to vote"
fi
