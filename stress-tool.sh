sudo amazon-linux-extras install epel -y
sudo yum install -y stress
stress --cpu 80 --timeout 20000 
