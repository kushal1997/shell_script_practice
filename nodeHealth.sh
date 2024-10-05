#!/bin/bash

######################################
#Author: Kushal
#Date: 02/10/2024
#
# It derives the node health
# Version : v1
######################################


#set -x # debug mode
#set -e # exit the command if error occurs
#set -o pipefail # exit the command if error occurs while using pipe

set -exo pipefail

#echo "Print the disk space"
df -h

#test error 
nasjnas

#echo "Print the memory space"
free -g

#echo "Print the no. of cpu's"
nproc

#print all processes running 
ps -ef

#print with filter
ps -ef | grep "amazon"

#print with filter and selecting a specific column of data
ps -ef | grep "amazon" | awk -F" " '{print $2}'
