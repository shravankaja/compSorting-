#!/bin/bash 
echo "Computation and  Sorting"
echo "Enter Number "
echo "Enter First Number"
read firstNumber
echo "Enter Second Number"
read secondNumber
echo "Enter Third Number"
read thirdNumber
c1=1
c2=2
c3=3
c4=4
echo " 1) A+B*C 2) A*B+C 3) A+B/C 4) A%B*C":
read choice
case $choice in 
	$c1) 
	resultFirst=$(( $firstNumber + $secondNumber * $thirdNumber ))
	echo $resultFirst ;;
	
	
	$c2)
	resultSecond=$(( $firstNumber * $secondNumber + $thirdNumber )) 
	echo $resultSecond ;;

	$c3)
	resultThird=$(( $thirdNumber + $firstNumber / $secondNumber )) 
	echo $resultThird ;;

	$c4)
	resultFourth=$(( $firstNumber % $secondNumber * $thirdNumber )) 
	echo $resultFourth ;;

esac

	resultFirst=$(( $firstNumber + $secondNumber * $thirdNumber ))
    	resultSecond=$(( $firstNumber * $secondNumber + $thirdNumber ))
        resultThird=$(( $thirdNumber + $firstNumber / $secondNumber ))
        resultFourth=$(( $firstNumber % $secondNumber * $thirdNumber ))

arr=( $resultFirst $resultSecond $resultThird $resultFourth )
arr2=( A+B*C A*B+C A+B/C A%B*C)
declare -A arr1
for (( i=0 ; $i < 4 ; i++ ))
do 
	
	arr1[${arr2[i]}]=${arr[i]}
done
for key in ${!arr1[@]}; 
do
    echo ${key} ${arr1[${key}]}
done
