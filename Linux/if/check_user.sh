#!/bin/bash


##########################
#Author: Vleena
#Description: check the login user if its root then display a message saying "Hello Super Hero"
#Version: V1

#########################

set -e

if [ $(whoami) == 'root' ]; then
	echo "Hello Super Hero"
else
	echo "$(whoami) is not a super Hero"
fi
