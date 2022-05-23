#! /bin/bash -x

a=$((RANDOM))
b=$((RANDOM))
c=$((0-$a-$b))

echo $a","$b","$c
