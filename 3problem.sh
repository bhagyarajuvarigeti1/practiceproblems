#! /bin/bash -x

function prime(){
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

}

function palindrome(){
read -p "enter value " b
	x=$b
	res=0
	while [ $b -gt 0 ]
	do
		res=$(($res*10))
		res=$(($res+$(($b%10))))
		b=$(($b/10))
	done
	if [ $res -eq $x ]
	then
		echo "palindrome"
	else
		echo "not palindrome"
	fi

}


palindrome
