#!/bin/bash -x
#calculate monthly wage of employee

isPartTime=1
isFullTime=2
totalsalary=0
empRatePerHr=20
numOfworkingDays=20

for((Day=1; Day<= numOfworkingDays; Day++))
do
   randomcheck=$((RANDOM%3))
   case $randomcheck in
                       $isPartTime)
                          empHrs=4
                       ;;
                       $isFullTime)
                          empHrs=8
                       ;;
                       *)
                          empHrs=0
                       ;;
    esac
salary=$(($empHrs*$empRatePerHr))
totalsalary=$(($totalsalary+$salary))
done
echo "The monthly wage of an employee is "$totalsalary
