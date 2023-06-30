#!/bin/bash

function multiply {
	echo $(expr $1 \* $2)
}

function basicCal {
  	echo "Enter a first number"
	read -r firstNumber
	echo "Enter a second number"
	read -r secondNumber

	additionResult=$(expr $firstNumber + $secondNumber)
	subtractionResult=$(expr $firstNumber - $secondNumber)
	multiplicationResult=$(multiply $firstNumber $secondNumber)
	divisionResult=$(expr $firstNumber / $secondNumber)

	echo "Your addition result is: $additionResult"
	echo "Your subtraction result is: $subtractionResult"
	echo "Your multiplication result is: $multiplicationResult"
	echo "Your division result is: $divisionResult"
}

function numberSquare {
	echo "Enter a number"
	read -r number
	squareResult=$(multiply $number $number)
	echo "your square result is: $squareResult"
}

function calArea {
	echo "Enter your length"
	# read entered value and save in length variable
	read -r length
	echo "Enter your breadth"
	# read entered value and save in breadth variable
	read -r breadth
	# area=$(expr $length \* $breadth)
	area=$(multiply $length $breadth)
	echo "your area is : $area"
}

echo "Please make a selection"
echo "1. basic Calculator"
echo "2. number square"
echo "3. area of square"
read -r selection

if [ "$selection" = "1" ]; then
	basicCal
fi

if [ "$selection" = "2" ]; then
	numberSquare
fi

if [ "$selection" = "3" ]; then
	calArea
fi




