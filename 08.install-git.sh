#!/bin/bash

# out program goal is to install mysql

USERID=$(id -u)

if[ $USERID -ne 0 ]
then
  echo "ERROR:: Please run this script with root access"
  exit 1 to 127
#   else 
# echo "INFO:: You are not root user"
fi
then
yum install git -y