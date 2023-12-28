# disk usage

# we need to contunuosely check disk memory and send alert emails if it is more than threshold

# algorithm:

# we need to develop the alogorithm for better implementing the assignment
# 1. check the disk memory
# 2.compare with threshold (10%)
# if  more than threshold trigger alert email 

# step-1

# df -hT ..> to check disk memory

# us-east-1c...> EBS also should be in the same avaliability zone (az)

# in realtime projects we will have more volumes attached



#!/bin/bash

# colors
#validations
#log redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

#IFS = means internel filed seperator is space

while IFS= read line
do
  echo "Output: $line"

  done <<< $DISK_USAGE




