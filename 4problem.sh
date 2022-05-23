#! /bin/bash -x

read -p "enter the number " a
ref=1
sol=1
for((i=2;i<=$a;i++))
do
	ref=$ref*$i
	sol=$(($sol*$i))
done

echo $ref " = " $sol

