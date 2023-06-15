#!/bin/bash

# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.

if [[ $UID == 0 ]]; then
	echo -e "You are root user\n"

elif groups | grep -q "\bsudo\b" || groups | grep -q "\badm\b"; then
	echo -e "You have superuser privileges\n"
else
	echo -e "You do not have superuser privileges\n"
	sleep 1
	echo "Exiting"
	sleep 1
	exit 1
fi

read -p "Enter username: " username
read -p "Enter person name: " real_name
read -p "Enter password: " password
sleep 1

sudo useradd -m -c "$real_name" $username && echo -e "\nThe account is created"

if [[ ${?} != 0 ]]; then
	echo "This username already exists"
	sleep 1
	exit 1
fi
sleep 1

echo "$username:$password" | sudo chpasswd  && echo -e "\nThe password is set"

if [[ ${?} != 0 ]]; then
	echo "Password Failure. Try a new password"
	sleep 1
	exit 1
fi
sleep 1

sudo passwd -e $username > /dev/null 2>&1 && echo "User will be asked to change the password on first login"

sleep 1

echo -e "\nUsername=$username"
echo "Password=$password"
echo "Account_folder=/home/$username"
