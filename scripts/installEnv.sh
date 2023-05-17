#!/bin/bash

echo "Install Env."

source bash_profile
cp $PRJ/scripts/bash_profile ~/.bash_profile
source ~/.bash_profile

sudo yum update

echo "Completed Install Env."

