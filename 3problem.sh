#! /bin/bash -x

a=$((RANDOM))
if [ $(($a%4)) -eq $(($a%400)) ]
then
	echo "leap year"
elif [ $(($a%100)) -eq 0 ]
then 
	echo "not leap year"
elif [ $(($a%4)) -eq 0 ]
then 
	echo "leap year"
else
	echo "not leap year"
fi
