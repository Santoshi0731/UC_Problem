#!/bin/bash -x
#Check employee is present or not check if he is part time/full time/absent

isPartTime=1
isFullTime=2
empRatePerHr=20
random_check=$((RANDOM%3))

if [ $isFullTime = $random_check]
then
    empHrs=8
    echo "Employee is present and doing full time"
elif [$isPartTime = $random_check]
then
    empHrs=4
    echo "Employee is present and doing part time"
else
    empHrs=0
    echo "Employee is absent"
fi
