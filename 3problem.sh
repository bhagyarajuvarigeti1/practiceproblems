#! /bin/bash -x

declare -a arr
j=0
read -p "enter the number " num
for((i=2;i<=((num/2));i++))
do
	if [ $((num%i)) -eq 0 -a $((i%2)) -ne 0 ]
	then
		arr[$j]=$i
		j=$(($j+1))
	elif [ i -eq 2]
	then
		arr[$j]=2
	fi
done 
echo '1' ${arr[@]} $num
