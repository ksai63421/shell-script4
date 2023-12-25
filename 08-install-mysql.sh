#!/bin/bash

# out program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
 echo "ERROR:: Please run this script with root access"
  exit 1
  fi 
  
yum install mysql -y
