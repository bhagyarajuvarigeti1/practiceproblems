#! /bin/bash -x

#a)
read -p "enter the inch" inch

ft=$(($inch/12))

echo $ft

#b)

read -p "enter length" l
read -p "enter height" h
area=$(($l*$h))
echo $area

#c)

read -p "enter how many plots in acres" p
plots=$(($area*$p))
