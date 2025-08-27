#!/bin/bash

###########################
#Author: Vleena
#Description: check if the given file exists or not on the server
#Version: V1

#############################

set -e

read -p "Enter the filename along with path: " f

if [ -f $f ]; then
	echo "file exists"
else
	echo "file does not exist"
fi
