#!/bin/bash

read -p "Enter a file name: " file_name

if [[ -z "$(ls | grep $file_name)" ]]; then
	touch $file_name
	echo "New file is created"
else
	echo "The file already exists"
fi


# read -p "Enter a file name: " file_name

# if [[ "$(ls | grep "file_name)" = "$file_name" ]]; then
#	echo "The file already exists"
# else
#	touch $file_name
#	echo "New file is created"
# fi



# read -p "Enter a file name: " file_name
#
# if [[ -e "$file_name ]]; then
# 	echo "The file already exists"
# else
# 	touch $file_name
# 	echo "New file is created"
# fi
#
