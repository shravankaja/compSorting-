echo "Computation and  Sorting"
echo "Enter Number "
echo "Enter First Number"
read firstNumber
echo "Enter Second Number"
read secondNumber
echo "Enter Third Number"
read thirdNumber

resultFirst=$(( $firstNumber + $secondNumber * $thirdNumber ))
resultSecond=$(( $firstNumber * $secondNumber + $thirdNumber ))
resultThird=$(( $thirdNumber + $firstNumber / $secondNumber ))
resultFourth=$(( $firstNumber % $secondNumber * $thirdNumber ))
echo $resultFirst
echo $resultSecond
echo $resultThird
echo $resultFourth
