#!/bin/bash

################################################################
# Author : Kushal
# Date : 04/10/2024

# Version : V1

# This script will report the aws resourse usage

#################################################################


# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM users


set -x
set -e
set -o pipefail


#list s3 buckets
aws s3 ls

# list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
aws lambda list-functions

# list IAM users
aws iam list-users
