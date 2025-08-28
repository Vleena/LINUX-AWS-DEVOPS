#!/bin/bash
#######################
#Title:- AWS s3 bucket,AWS instance, lambda function and iam user list to the configured AWS account in the server.
#Version: V4
#########################

#set -x

read -p "enter the filename to store the information:" file
touch $file
chmod 600 $file

# list the iam users
(echo -e "**************************************\niam users list:-\n***************************************" && aws iam list-users|jq '.Users[].UserName') >> $file

# list the bucket
(echo -e "**************************************\nthe bucket name:-\n************************************** " && aws s3 ls) >> $file

#list the ec2 instances
(echo -e "**************************************\nlist of EC2 instances:-\n********************************" && aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId') >> $file

#list the lambda function
(echo -e "*************************************\nthe Lambda functions:-\n**********************************" && aws lambda list-functions) >> $file

