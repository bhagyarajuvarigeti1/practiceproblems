#! /bin/bash -x

declare -a arr
for((i=0;i<5;i++))
do
	arr[$i]=$((RANDOM % 899 + 100 ))
done
for((i=0;i<5;i++))
do
	for((j=0;j<5-1-i;j++))
	do
		if [ ${arr[$j]} -gt ${arr[$(($j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$(($j+1))]}
			arr[$(($j+1))]=$temp
		fi
	done
done
echo ${arr[0]} "   " ${arr[4]}
