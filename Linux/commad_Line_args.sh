#!/bin/bash

################################
#Description: passing the command line arguments to the shell scripts.
#Author: Vleena

################################

set -e

echo "First argument:" $1
echo "Second arguemnts:" $2
echo "Number of arguments:" $#
echo "Exit code of the script:" $?
echo "arguments passed values:" $@
echo "1st column of execution" $0
