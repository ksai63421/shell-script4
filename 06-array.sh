#!/bin/bash
# this is called array, insted of single valur it can hold multiple values
PERSONS=("Ramesh" "Suresh" "Sai")
# inside array we always erfer values with index and it starts from 0 its nothing but pointer


echo "First Person: ${PERSONS[0]}"

echo "First Person: ${PERSONS[@]}" # @ is it will print all persons