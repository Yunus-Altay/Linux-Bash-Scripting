#!/bin/bash

read -p "What is your name: " name
read -p "What is your age: " age
read -p "What is average life expectancy in your country: " ale

if [[ $age -lt 18 ]]; then
	echo -e "Student.\n$name has $((18-$age)) years left to be able to work."
elif [[ $age -eq 18 ]] || [[ $age -lt 67 ]]; then
	echo -e "Working.\n$name has $((67-$age)) years left to retire."
elif [[ $age -ge 67 ]] && [[ $age -lt $ale ]]; then
	echo -e "Retired.\n$name has $(($ale-$age)) years to die."
else
	echo "Am I talking to a walking dead?? RUUUUUUUN!!"
fi
	
