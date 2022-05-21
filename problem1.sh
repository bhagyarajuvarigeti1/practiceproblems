#! /bin/bash -x

declare -a myarray

#generate 10 random 3 digit number
for((i=0;i<10;i++))
do
	myarray[$i]=$((RANDOM % 900 + 100))
done

echo ${myarray[@]}

