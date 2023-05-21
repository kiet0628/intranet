#!/bin/bash

echo ".....Stoping node server"

kill -9 $(ps -ef | ps -ef | grep "node server" | grep -v "grep" | awk {'print $2'})

echo "Completed Stopping Node Server....."

ps -ef | grep "node server" 
sleep 3

