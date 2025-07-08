#!/bin/bash

###############################
#Title:- 
#Description:- 
#Version:-v1

################################

#set -x  #provide the command along with output
#list all the process with detailed information
ps -ef

# process associated with given user

read -p "Enter user name:" u

ps -u $u

#process with terminal

ps -a #with TTY


#process without the terminal

ps -x #TTY(terminal type) is ? mark
