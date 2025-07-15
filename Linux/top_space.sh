#!/bin/bash

############################
#Title:- Linux tasks and disk space
#Description:- top and df command usages
#Version:-V1

###########################

#set -x
top #display the Linux task and the system processes

read -p "Enter process ID:" p
top -p  $p #display the details of specific processID 

read -p "Enter username:" u
top -u $u  #display specific user process details


