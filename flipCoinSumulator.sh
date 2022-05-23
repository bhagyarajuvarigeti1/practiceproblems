#! /bin/bash -x

chead=0
ctail=1
h=0
t=0
while [ true ]
do
	flipcoin=$((RANDOM % 2))

	if [ $flipcoin -eq $chead ]
	then
		h=$(($h+1))
		echo "head"
	elif [ $flipcoin -eq $ctail ]
	then
		t=$(($t+1))
		echo "tails"
	fi
	if [ $h -eq 21 ]
	then
		res=$(($h-$t))
		echo "head wins with lead " $res
		break
	elif [ $t -eq 21 ]
	then
		res=$(($t-$h))
		echo "tail wins with lead " $res
		break
	fi
done
