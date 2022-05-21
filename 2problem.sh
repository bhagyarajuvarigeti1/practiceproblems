#! /bin/bash -x

declare -a arr
for((i=0;i<11;i++))
do
	arr[$i]=$((RANDOM % 900 +100))
done
for((i=0;i<11;i++))
do
	for((j=0;j<11-i-1;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo ${arr[@]}
echo ${arr[1]} " , " ${arr[9]}
