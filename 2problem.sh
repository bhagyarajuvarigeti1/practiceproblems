#! /bin/bash -x

declare -a arr
for((i=1;i<51;i++))
do
	value=$((RANDOM % 12 +1))
	case $value in
	1)
		january=$january"  "$i
		;;
	2)
		february=$february"  "$i
		;;
	3)
		march=$march"  "$i
		;;
	4)
		april=$april"  "$i
		;;
	10)
		october=$october"  "$i
		;;
	5)
		may=$may"  "$i
		;;
	6)
		june=$june"  "$i
		;;
	7)
		july=$july"  "$i
		;;
	8)
		august=$august"  "$i
		;;
	9)
		september=$september"  "$i
		;;
	11)
		november=$november"  "$i
		;;

	*) december=$december"  "$i
		;;
	esac
done
echo "january :"$january
echo "february :" $february
echo "march :" $march
echo "april :" $april
echo "may :" $may
echo "june :" $june
echo "july :" $july
echo "august :" $august
echo "september :" $september
echo "october :" $october
echo "november :" $november
echo "december :" $december
