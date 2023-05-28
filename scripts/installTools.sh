#!/bin/bash

echo "Install Tools."

sudo yum install git -y
sudo yum install java-1.8.0-openjdk -y
sudo yum install wget -y
#sudo yum install -y postgresql
sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
#sudo yum install -y postgresql14-server
sudo yum install -y postgresql15-server




echo "Completed Install Env."

