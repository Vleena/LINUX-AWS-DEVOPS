#!/bin/bash

##############################
#Author: Vleena
#Description: This script reports the AWS Resource usuage. 
#Version: V1
###############################

set -x

echo "############################"
date
echo "############################"

#list the AWS S3 bucket
aws s3 ls > /root/LINUX-AWS-DEVOPS/Linux/Resource_Tracker

#list Ec2 instances
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId' > /root/LINUX-AWS-DEVOPS/Linux/Resource_Tracker

# list lambda
aws lambda list-functions > /root/LINUX-AWS-DEVOPS/Linux/Resource_Tracker

#list IAM users

aws iam list-users > /root/LINUX-AWS-DEVOPS/Linux/Resource_Tracker


