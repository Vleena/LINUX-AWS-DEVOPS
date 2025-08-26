#!/bin/bash

####################
# Author:- Vleena
# Description:- AWS-CLI installation on ubuntu and version checking
# Version:- V1
# ################

sudo apt-get update
sudo snap install aws-cli --classic
echo "AWS CLI version: " 
aws --version

