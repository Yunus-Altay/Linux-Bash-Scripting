#!/bin/bash

IPADDRESS=`cat info.json | grep -m 1 "PrivateIpAddress" | cut -d '"' -f4`

sed -i "s/ec2-private_ip/$IPADDRESS/g" terraform.tf && echo "private IP assigned"
