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
echo ${dixt[@]}
echo ${arr[@]}
