

# example of using arguments to a script


# echo "My first name is $1"
# echo "My surname is $2"
# echo "Total number of arguments is $#" 

#!/bin/bash

# Assign two numbers to variables
num1=20
num2=10

# Compare the numbers using if-else statements
if [ $num1 -gt $num2 ]
then
  echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]
fi