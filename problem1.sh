#! /bin/bash -x

read -p "enter number" n
ref=1
for((i=0;i<n;i++))
do
	ref=$(($ref*2))
	if [ $ref -eq 256 ]
	then
		break
	fi
done

