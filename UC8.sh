#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numberofWorkingDay=20
MaxRateInMonth=100

totalWorkingDays=0
totalEmpHr=0
totalSalary=0

function getWorkingHour()
{
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

}

function getEmpWages()
{
        echo $(($totalEmpHr*$empRatePerHr))
}


while [[ $totalEmpHr -lt $MaxRateInMonth && $totalWorkingDays -lt $numberofWorkingDay ]]
do
        ((totalWorkingDays++))
        randomcheck=$((RANDOM%3))
        getWorkingHour $randomcheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( getEmpWages $totalEmpHr)"
echo ${dailyWages[@]}
