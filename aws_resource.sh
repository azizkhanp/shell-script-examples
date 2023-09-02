#!/bin/bash

######################################################
# Author: Aziz
# Date: 1st-Sep-23
# v1
#
# This script will report the AWS resource usage
#######################################################

# set -x is used to enable debugging mode. When you include this command in your script, it instructs the shell to print each command before it is executed
set -x 

# List S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# List EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances --query  'Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,PublicIpAddress,PrivateIpAddress]' --output table

# List Lambda functions
echo "Print list of Lambda functions"
aws lambda list-functions

# List IAM Users
echo "Print list of IAM Users"
aws iam list-users
