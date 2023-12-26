#!/bin/bash

# out program goal is to install mysql
DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

# colors in scripting
R="\e[31m"
G=\e[32m"
N="\e[0m"

# I want to uppend all the ouputs to this log file
VALIDATE(){
  #$1 --> it will recieve the argument1
  if [ $1 -ne 0 ]
then 
   echo "$2 is $R failure $N"
   exit 1
   else
    echo "$2 is $G success $N"
   fi
}

USERID=$(id -u)
  # this function should validate the previous command and inform user it is success or failure

if [ $USERID -ne 0 ]
then
 echo "ERROR:: Please run this script with root access"
  exit 1
fi 
# it is our responsibility again to check intsllation successfully or not
yum install mysql -y &>>$LOGFILE # I don't want this ouptput again I want to redirect

VALIDATE $? "Installing MySQL"

   yum install postfix -y &>>$LOGFILE

  VALIDATE $? "Installing postfix"