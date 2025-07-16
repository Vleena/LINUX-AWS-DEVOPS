#!/bin/bash


###########################
# Author: Vleena
# Description: get a word and find the given word count.
# version: v1

#################################

read -p "Enter a word:" w

read -p "Enter a character:" c

grep -o $c <<< $w | wc -l  # here the word is sent to the grep command and grep only read the character and display single character 					in a line
			   # wc command count the line


