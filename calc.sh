#!/bin/bash

clear

#Define colors
Red='\033[1;31m'
Green='\033[1;32m'
Blue='\033[1;36m'
Yellow='\033[1;33m'
NC='\033[0;m'

echo -e "${Blue}"
echo "MY ARITHMETIC CALCULATOR"
sleep 3

#Welcome message
echo "Welcome to My Calculator App"

echo

#Calculator function
calculate() {
read -p "Enter operation: " operation 
read -p "First number: " num1
read -p "Second number: " num2
echo -e "${Green}Ans:" $(($num1$operation$num2))${NC}
}

#Display Operations Menu
PS3="Select operation type: "
select operation in Addition Subtraction Multiplication Division Quit
do
	case $operation in
		Addition)
			calculate "+"
			;;
		Subtraction)
			calculate "-"
			;;
		Multiplication)
			calculate "*"
			;;
		Division)
			calculate "/"
			;;
		Quit)
			#Goodbye message
			echo -e ${Yellow}"Thank you for using My Calculator App"${NC}
			sleep 3
			exit $?
	esac

done
