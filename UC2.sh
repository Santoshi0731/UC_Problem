#!/bin/bash -x
#Check whether employee is present and calculate his daily wage

isPresent=1
random_check=$((RANDOM%3))
empRatePerHr=20
empHrs=8

if [$isPresent -eq $random_check]
then
    salary=$(($empRatePerHr*$empHrs))
    echo "The salary is"$salary
else
    salary=0
    echo "The salary is"$salary
fi
