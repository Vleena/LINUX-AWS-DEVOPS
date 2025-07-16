#!/bin/bash


#####################
# Author: Vleena
# Description: listing some comman Linux commands
# Version: V2

######################

set -x

pwd
ls
free -h
df -h
nproc

ps -ef|awk -v var="process-id:" -F" " '{print var,$2}' #print all the process ids

echo "Hello, everyone. Welcome to the Bash shell" >> welcome_page.txt
