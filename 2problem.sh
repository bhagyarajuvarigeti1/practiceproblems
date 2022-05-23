#! /bin/bash -x

function check(){
	read -p	"enter one number " a
	read -p "enter two number " b
	ref=0
	x=$a
	y=$b
	while [ $a -gt 0 ]
	do
		ref=$(($ref*10))
		ref=$(($ref+$(($a%10))))
		a=$(($a/10))
	done
	if [ $x -eq $ref ]
	then
		echo "palindrome"
	else
		echo "not palindrome"
	fi
	ref=0
	while [ $b -gt 0 ]
	do
		ref=$(($ref*10))
		ref=$(($ref+$(($b%10))))
		b=$(($b/10))
	done
	if [ $y -eq $ref ]
	then
		echo "palindrome"
	else
		echo "not palindrome"
	fi
}

check
