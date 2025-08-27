#!/bin/bash


################################
#Author: Vleena
#Description: print the number 1 to 5
#Version: V3

######################

set -e

#for i in 1 2 3 4 5
for i in $(seq 1 10)
do 
	echo $i
done
