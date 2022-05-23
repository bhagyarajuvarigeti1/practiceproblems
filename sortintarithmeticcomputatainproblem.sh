#! /bin/bash -x

declare -A dixt
declare -a arr

read -p "first number" a
read -p "second number" b
read -p "third number" c

dixt[0]=$(($a+$b*$c))
dixt[1]=$(($a*$b+$c))
dixt[2]=$(($a+$b/$c))
dixt[3]=$(($a%$b+$c))

for((i=0;i<4;i++))
do
	arr[$i]=${dixt[$i]}
done

for((i=0;i<4;i++))
do
	for((j=0;j<4-1;j++))
	do
		if [ ${arr[j]} -gt ${arr[$(($j+1))]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$(($j+1))]}
			arr[$(($j+1))]=$temp
		fi
	done
done
echo ${dixt[@]}
for((i=3;i>=0;i--))
do
	echo ${arr[$i]}
done
