#!/bin/bash


#####################
# Author: Vleena
# Description: listing some comman Linux commands
# Version: V1

######################

set -x

pwd
ls
free -h
df -h
nproc

ps -ef|awk -v var="process-id:" -F" " '{print var,$2}' #print all the process ids
