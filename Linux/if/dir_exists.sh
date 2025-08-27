#!/bin/bash

#########################
#Author: Vleena
#Description: check if directory exists or not in a given path
#Version: V1

#############################
set -e

read -p "Enter the directory name along with path:" dir
if [ -d $dir ]; then
	echo "directory exists"
else
	echo "directory does not exists"
fi

