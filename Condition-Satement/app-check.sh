#!/bin/bash

read -p "Enter the app you want to find out whether it is installed: " app
$app --version

if [[ `echo $?` != 0 ]]; then
	sudo yum update -y
	sudo yum install $app -y $$ echo "app installed"
else
	echo "$app already installed"
fi
