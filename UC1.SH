#!/bin/bash -x
#Use case for employee is present or not using random module

isPresent=1
random_check=$((RANDOM%3))

if(($isPresent==$random_check))
then
   echo "Employee is Present"
else
   echo "Employee is Absent"
fi
