#!/bin/bash

# all argunments are in $@
for i in $@
do
  yum install $i -y

done 
