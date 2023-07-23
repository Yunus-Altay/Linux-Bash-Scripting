#!/bin/bash
# this is to show the exit status types

# set -e 
# enables the exit immediately if any command returns a non-zero status 

expr 1 + 5
echo $?

rm fruits.txt
echo $?

expr 1 +10
echo $?
