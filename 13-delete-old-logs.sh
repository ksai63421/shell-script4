#!/bin/bash

#find /var/log -name "*.log" -type f -mtime +10

APP_LOGS_DIR=/home/centos/app-logs

DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs
# inside the above folder /home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +12)
echo "$FILES_TO_DELETE"

while read line
do
  echo "Deleting $line" &>> $LOGFILE
  rm -rf $line

done <<< $FILES_TO_DELETE

echo "$message" | mail -s "high disk usage" maddala.2022@gmail.com



# we need to delete lof files more than 12 days

#only .log files should be deleted, dont delete any other files
# got to the folder
# get all the log files with extension of .log
# check the date
#if date is more than 2 weeks old date


