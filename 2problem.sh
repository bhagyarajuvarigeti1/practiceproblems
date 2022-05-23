#! /bin/bash -x


read -p "enter the number" n
for((i=1;i<=n;i++))
do
	sum=$sum+1/$i 
done

echo $sum

