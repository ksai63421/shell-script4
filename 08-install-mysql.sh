#!/bin/bash

# out program goal is to install mysql

USERID=$(id -u)
  # this function should validate the previous command and inform user it is success or failure

VALIDATE(){
  #$1 --> it will recieve the argument1
  if [ $1 -ne 0 ]
then 
   echo "Installation is failure"
   exit 1
   else
    echo "Installation is success"
   fi
}

if [ $USERID -ne 0 ]
then
 echo "ERROR:: Please run this script with root access"
  exit 1
fi 
# it is our responsibility again to check intsllation successfully or not
yum install mysql -y

VALIDATE $?

   yum install postfix -y

  VALIDATE $?