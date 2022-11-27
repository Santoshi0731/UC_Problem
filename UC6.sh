#!/bin/bash -x
#Calculate wage of month upto limit and limit is TotalWorkingDay<20 or TotalworkingHr<100

isPartTime=1
isFullTime=2
empRatePerHr=20
NumberOfWorkingDay=20
MaxRateInMonth=100
totalworkingDays=0
totalEmpHr=0
totalsalary=0

while [[ $totalEmpHr -lt $MaxRateInMonth && $totalWorkingDays -lt $NumberOfWorkingDay ]]
do
    ((totalWorkingDays++))
    randomcheck=$((RANDOM%3))
case $randomcheck in
                   $isPartTime)
                       empHr=4
                   ;;
                   $isFullTime)
                       empHr=8
                   ;;
                   *)
                       empHrs=0
                   ;;
esac
totalEmpHr=$(($totalEmpHr+$empHr))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))
echo "Total salary is"$totalsalary
