#!/bin/bash -x
#Check employee is present or not and check is fulltime/partTime/absent using switch case
isPartTime=1
isFullTime=2
empRatePerHr=20
random_check=$((RANDOM%3))
    case  $random_check in
                          $isFulltime)
                             empHrs=8
                          ;;

                           $isPartTime)
                             empHrs=4
                           ;;
                           *)
                             empHrs=0
                           ;;
    esac
salary=$(($empHrs*$empRatePerHr))
echo $salary
