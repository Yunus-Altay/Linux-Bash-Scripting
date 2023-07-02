#!/bin/bash

read -p "Input a number: " number

if [[ $number  -gt 10 ]]; then
	echo "Number is bigger than 10"
	
	if (($number%2==0)); then
		echo "It is an even number"
	else
		echo "It is an odd number"
	fi
else
	echo "Number is smaller than 10"
fi
