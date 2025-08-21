#!/bin/bash

####################
#Author: Vleena
#Description: install the docker on ubuntu
#Version:V2
####################
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu
sudo systemctl restart docker


