#!/bin/bash

echo "Install Env."

#set EST Time zone
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/EST5EDT /etc/localtime


source bash_profile
cp $PRJ/scripts/bash_profile ~/.bash_profile
source ~/.bash_profile

sudo yum update -y

echo "Completed Install Env."

