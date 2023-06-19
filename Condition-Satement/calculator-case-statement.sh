#!/bin/bash


read -p "Input first number: " first_number
read -p "Input second number: " second_number
read -p "Select math operation
[A]ddition, [S]ubstraction, [M]ultiplication, [D]ivision:
" operation

case $operation in
	"A")
		echo "result=$((first_number+second_number))"
	;;
	"S")
		echo "result=$((first_number-second_number))"
	;;
	"M")
		echo "result=$((first_number*second_number))"
	;;
	"D")
		echo "result=$((first_number/second_number))"
	;;
	*)
		echo "Wrong choice.."
	;;
esac
