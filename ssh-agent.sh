#!/bin/bash

read -p "Input the public IP of the jump box instance: " JB_pubIP

eval "$(ssh-agent)"     # Enable ssh agent

cd C:/Users/simao/Desktop/AWS/credentials     # Locate the directory where your key-pair exists

ssh-add ./first-key-pair.pem    # Specify your key-pair

# If we don't want to create a config file, we have another option, using -A flag with the ssh command
# '-A' option enables forwarding of the authentication agent connection
# It means that, it forwards your SSH auth schema to the remote host. So you can use SSH over there as if you were on your local machine

ssh -A ec2-user@$JB_pubIP

# After connected to the jump box, run the code "ssh -A ec2-user@<private ip of the instance in the private subnet>"
