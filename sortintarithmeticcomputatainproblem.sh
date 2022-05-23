#! /bin/bash -x

read -p "first number" a
read -p "second number" b
read -p "third number" c

sol=$(($a+$b*$c))

echo $a " + " $b " * " $c " = " $sol
