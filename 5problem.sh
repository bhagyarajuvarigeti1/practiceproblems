#! /bin/bash -x

read -p "enter number " x
read -p "enter number " y

for((a=$x;a<=$y;a++))
do
	flag=
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
	        echo  $a "not prime"
	else
	        echo $a "prime"
	fi
done
