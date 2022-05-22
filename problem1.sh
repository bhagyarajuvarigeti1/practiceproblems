#! /bin/bash -x

declare -A test_dixt

while [ true ]
do
	value1=$((RANDOM % 6 +1))
	case $value1 in
		1)
			test_dixt[1]=$((${test_dixt[1]}+1))
			;;
		2)
			test_dixt[2]=$((${test_dixt[2]}+1))
			;;
		3)
			test_dixt[3]=$((${test_dixt[3]}+1))
			;;
		4)
			test_dixt[4]=$((${test_dixt[4]}+1))
			;;
		5)
			test_dixt[5]=$((${test_dixt[5]}+1))
			;;

		6)
			test_dixt[6]=$((${test_dixt[6]}+1))
			;;
		*)
			;;
	esac

	if [ ${test_dixt[1]} -eq 10 ]
	then
		echo 1
				break

	elif [ ${test_dixt[2]} -eq 10 ]
	then
		echo 2
				break

	elif [ ${test_dixt[3]} -eq 10 ]
	then
		echo 3
				break

	elif [ ${test_dixt[4]} -eq 10 ]
	then
		echo 4
				break

	elif [ ${test_dixt[5]} -eq 10 ]
	then
		echo 5
				break


	elif [ ${test_dixt[6]} -eq 10 ]
	then
		echo 6
				break
	fi

done


echo "the result is" ${test_dixt[@]}
