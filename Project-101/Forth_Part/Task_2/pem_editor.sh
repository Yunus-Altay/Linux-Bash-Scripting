#!/bin/bash

MY_KEY=$(cat certificate.pem)

echo -e $MY_KEY > new.pem

#sed 's/\\n/\n/g' certificate.pem > new.pem && echo "New pem file with multiline created"
