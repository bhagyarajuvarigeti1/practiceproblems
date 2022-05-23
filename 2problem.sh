#! /bin/bash -x


read -p "enter the number between 1 to 100" n
while [ true ]
do
	n=$(($n/2))
	if [ $n -eq 0 ]
	then
		break
	fi
done
