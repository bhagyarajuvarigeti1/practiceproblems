#! /bin/bash -x

a=$((RANDOM))
b=$((RANDOM))
c=$((RANDOM))

declare -a arr
arr[0]=$(($a+$b*$c))
arr[1]=$(($a%$b+$c))
arr[2]=$(($a+$b/$c))
arr[3]=$(($a*$b+$c))

for((i=0;i<4;i++))
do
	for((j=0;j<4-1;j++))
	do
		if [ ${arr[$j]} -gt ${arr[$(($j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$(($j+1))]}
			arr[$(($j+1))]=$temp
		fi
	done
done
echo ${arr[@]}
echo ${arr[0]} " and " ${arr[3]}
