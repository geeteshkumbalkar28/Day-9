#!/bin/bash -x

checkAttnd=$(( RANDOM % 2 ))
preDay=1
absDay=0

if [ $checkAttnd -eq $preDay ]
then
	echo "$preDay"
else
	echo "$absDay"
fi
