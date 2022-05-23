#! /bin/bash -x

function degree(){

	local n=$1
	val=$n
	case $n in
		0)
			degc=$n;;
		100)
			degc=$n;;
		32)
			degf=$n;;
		212)
			degf=$n;;
	esac
	case  $val in
		0)
			degf=$(($(($(($degc*9))/5))+32));;

		100)
			degf=$(($(($(($degc*9))/5))+32));;
		32)
			degc=$(($(($degf-32))*5/9));;
		212)
			degc=$(($(($degf-32))*5/9));;
	esac
}

read -p "enter number" d
degree $d
