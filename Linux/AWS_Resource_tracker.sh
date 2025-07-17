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
aws s3 ls > Resource_Tracker

#list Ec2 instances
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId' > Resource_Tracker

# list lambda
aws lambda list-functions > Resource_Tracker

#list IAM users

aws iam list-users > Resource_Tracker


