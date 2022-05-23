#! /bin/bash -x

read -p "enter the number" n

primefactors=1
for((i=2;i<=$n;i++))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		primefactors=$primefactors,$i
	fi
done
echo $primefactors
