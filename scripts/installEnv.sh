#!/bin/bash

echo "Install Env."

source bash_profile
cp $PRJ/scripts/bash_profile ~/.bash_profile
source ~/.bash_profile

sudo yum update -y

echo "Completed Install Env."

