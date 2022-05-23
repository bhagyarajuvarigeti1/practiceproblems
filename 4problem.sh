#! /bin/bash -x

rs=100
win=1
lose=0
ser=0
res=0
while [ $rs -le 200 -a $rs -gt 0 ]
do
	op=$((RANDOM % 2))
	if [ $win -eq $op ]
	then
		rs=$(($rs+1))
		res=$(($res+1))
	else
		rs=$(($rs-1))
		ser=$(($ser+1))
	fi
done

echo "lose" $ser
echo "win" $res
