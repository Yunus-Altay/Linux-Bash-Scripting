#!/bin/bash

read -p "Enter first number: " first_number
read -p "Enter second number: " second_number

sum=$((first_number+second_number))
sub=$((first_number-second_number))
mul=$((first_number*second_number))
div=$((first_number/second_number))

echo "Sum of the numbers : $sum"
echo "Substraction of the numbers : $sub"
echo "Multiplication of the number : $mul"
echo "Division of the number : $div"

<<EOF
let "sum = $first_number + $second_number"
let "sub = $first_number - $second_number"
let "mul = $first_number * $second_number"
let "div = $first_number / $second_number"
EOF
