#! /bin/bash -x

read -p "enter number " a
flag=0
for((i=2;i<=$(($a/2));i++))
do
	if [ $(($a%$i)) -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag -eq 1 ]
then
	echo "not prime"
else
	echo "prime"
fi
