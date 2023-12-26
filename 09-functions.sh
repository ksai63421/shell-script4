#!/bin/bash

# out program goal is to install mysql

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log


VALIDATE(){
  #$1 --> it will recieve the argument1
  if [ $1 -ne 0 ]
then 
   echo -e "$2.....  failure"
   exit 1
else
    echo -e "$2.... success"
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