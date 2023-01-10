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

function calcPerDayHour(){
	case $1 in
                $halfDay)
                        empHour=4
                        ;;
                $fullDay)
                        empHour=8
                        ;;
                *)
                        empHour=0
                        ;;
        esac
	echo $empHour
}

while [[ $day -le $monthDay && $preDay -lt $maxDay && $totalHour -lt 120 ]]
do
	perDayHour=$( calcPerDayHour $((RANDOM%3)))
	totalHour=$(($totalHour+$perDayHour))
	if [ $perDayHour -eq 0 ]
	then
		((absDay++))
	else
		((preDay++))
	fi
	((day++))
done
monthlySal=$(($totalHour*$perHourSal))
echo "total monthly salary is $monthlySal"
echo "Total day present is $preDay"
echo "TOtal Hour Worked is $totalHour"
echo "Absent days are $absDay"
