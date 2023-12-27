#!/bin/bash

#find /var/log -name "*.log" -type f -mtime +13

APP_LOGS_DIR=/home/centos/app-logs

DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
# inside the above folder /home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +13)
echo "$FILES_TO_DELETE"

while read line
do
  echo "Deleting $line" &> $LOGFILE
  rm -rf $line

done < $FILES_TO_DELETE

