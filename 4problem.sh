#! /bin/bash -x
sum=0
for((i=0;i<5;i++))
do
	value=$((RANDOM % 89 + 10))
	sum=$(($sum+$value))
done
echo $sum
