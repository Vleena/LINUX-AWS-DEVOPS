#!/bin/bash
#######################
#Title:- AWS s3 bucket,AWS instance, lambda function and iam user list
#Version: V3
#########################

#set -x

read -p "enter the filename to store the information:" file
touch $file
chmod 600 $file

# list the iam users
(echo "iam users list:-" && aws iam list-users|jq '.Users[].UserName') >> $file

# list the bucket
(echo "the bucket name:- " && aws s3 ls) >> $file

#list the ec2 instances
(echo "list of EC2 instances:-" && aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId') >> $file

#list the lambda function
(echo "the Lambda functions:-" && aws lambda list-functions) >> $file

