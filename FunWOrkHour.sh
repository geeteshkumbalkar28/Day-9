#!/bin/bash -x

halfDay=1
fullDay=2
perHourSal=100
monthDay=31
maxDay=20
totalHour=0
preDay=0
absDay=0
day=1

while [[ $day -le $monthDay && $preDay -lt $maxDay && $totalHour -lt 100 ]]
do
	ranCheck=$((RANDOM%3))
	case $ranCheck in
		$halfDay)
			empHour=4
			((preDay++)) ;;
		$fullDay)
			empHour=8
			((preDay++));;
		*)
			empHour=0
			((absDay++)) ;;
	esac
	totalHour=$(($totalHour+$empHour))
	((day++))
done
monthlySal=$(($totalHour*$perHourSal))
echo "total monthly salary is $monthlySal"
echo "TOtal Hour Worked is $totalHour"
