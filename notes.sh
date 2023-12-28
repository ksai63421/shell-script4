#class 13
# disk usage# we need to delete lof files more than 12 days
#only .log files should be deleted, dont delete any other files
# got to the folder
# get all the log files with extension of .log
# check the date
#if date is more than 2 weeks old date

#class 14

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

# usually we have a lot of alerts, you need to prepare template email to trigger with respective alerts and email messages



#!/bin/bash

# colors
#validations
#log redirections

# interview : - how to call other shell script from your current script ?

sh mail.sh maddala.2022@gmail.com "High disk usage" "$message" "Devops Team" "High disk usage"


#for shell script have a special editor is a sed editor
.......................................................

CRUD 
.........

Creation of the line
update the line
delete the lines

sed -e '1 a good morning' passwd

adding good monring after line to file passwd

I want before line 1 is good morning ?
 sed editor is a streamline editor ..> its temporary editior ..> it will do chnages temp not permanent

 i want before line 1

 sed -e '1 i good morning' passwd
 sed -i '1 i good morning' passwd.....> permanent 

 I want to update good with ?

update
...................
 comand :- sed -e 's/<word-to-find>/<word-to-replace>/' <filename> 

this one will replace the first occurance in every line

sed -e 's/nologin/<nologinnn/' passwd

the above output only first occurance will replace not all of them because of  S

if you want all occurances you need to use g?

sed -e 's/nologin/<nologinnn/g' passwd

delete
................

sed -e '/word-to-delete/ d' passwd



