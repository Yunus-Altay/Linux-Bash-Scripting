#!/bin/bash

cat auth.log | grep "invalid user" | awk -F' ' '{ if ($8 == "user") print $9;}' | sort | uniq -c > Inv_user_list.txt && sleep 2

# grep -Eio "invalid user .+ \[" auth.log | awk '{print $3}' | sort | uniq -c > Inv_user_list.txt && sleep 2

echo -e "\nInvalid users and attempt amount listed"
