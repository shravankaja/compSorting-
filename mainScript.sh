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
 
for (( i=0 ; $i < 4 ; i++ ))
do 
	key1=result$i
	arr1[$key1]=${arr[i]}
done
for i in "${arr[@]}"
do
	echo $i
done
for key in ${!arr1[@]}; 
do
    echo ${key} ${arr1[${key}]}
done
for (( i1=0 ; $i1 < 4 ; i1++ ))
do
for (( i=0 ; $i < 4 ; i++ ))
do
	if [ ${arr[i+1]} -lt ${arr[i]} ]
	then 
		temp=${arr[i]}
		arr[i]=${arr[i+1]}
		arr[i+1]=$temp
	fi
done
done
echo "Ascending Order"
for i in "${arr[@]}"
do
        echo $i
done
for (( i1=0 ; $i1 < 4 ; i1++ ))
do
for (( i=0 ; $i < 4 ; i++ ))
do
        if [ ${arr[i+1]} -gt ${arr[i]} ]
        then
                temp=${arr[i]}
                arr[i]=${arr[i+1]}
                arr[i+1]=$temp
        fi
done
done
echo "Ascending Order"
for i in "${arr[@]}"
do
        echo $i
done 

