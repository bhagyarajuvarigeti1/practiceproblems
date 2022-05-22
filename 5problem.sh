#! /bin/bash -x

declare -a arr
j=1
for((i=0;i<9;i++))
do
	arr[$i]=$(($j*11))
	j=$(($j+1))
done

echo ${arr[@]}
