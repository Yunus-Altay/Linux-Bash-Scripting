#!/bin/bash

awk -F, '{ if ($1 == "serdar" && $4 == "TerminateInstances") print $0;}' event_history.csv | grep -o "i-[a-zA-Z0-9]*" | sort | uniq > result.txt
# grep serdar event_history.csv | grep TerminateInstances | grep -o "i-[a-zA-Z0-9]*" | sort | uniq > result.txt

echo "Terminated instances by user "serdar" listed"