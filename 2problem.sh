#! /bin/bash -x

#m=$((RANDOM % 12 + 1))
#d=$((RANDOM % 30 + 1))


if [ $m -eq 3 -a $d -gt 20 ]
then
	echo "true"
elif [ $m -eq 6 -a $d -lt 20 ]
then
	echo "true"
elif [ $m -lt 6 -a $m -gt 3 ]
then
	echo "true"
else
	echo "false"
fi
