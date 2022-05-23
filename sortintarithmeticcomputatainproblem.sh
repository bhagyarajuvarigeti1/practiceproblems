#! /bin/bash -x

read -p "first number" a
read -p "second number" b
read -p "third number" c

sol=$(($a+$b*$c))
sol1=$(($a*$b+$c))
sol2=$(($a+$b/$c))
echo $a " + " $b " * " $c " = " $sol
echo $a " * " $b " + " $c " = "$sol1
echo $a " + " $b " / " $c " = "$sol2
