#! /bin/bash -x

read -p "enter the number " a

read -p "enter the number " b

case $b in
	1)
	res=$(($a*12));;
	2)
	res=$(($a/12));;
	3)
	res=$(($a/3.281));;
	4)
	res=$(($a*3.281));;
esac
