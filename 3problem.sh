#! /bin/bash -x

headc=1
tailc=0
i=0
j=0
while [ true ]
do
	flip=$((RANDOM % 2))
	if [ $flip -eq $headc ]
	then
		i=$(($i+1))
	else
		j=$(($j+1))
	fi
	if [ $i -eq 11 ]
	then
		echo "HEad"
		break
	elif [ $j -eq 11 ]
	then
		echo "tail"
		break
	fi
done
