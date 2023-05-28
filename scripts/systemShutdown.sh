#!/bin/bash


date >> ~/shutdownDate.txt
cd /data/intranet/scripts/
./stopWiki.sh >> /data/intranet/wiki/wiki.log
sleep 3
sudo shutdown -h

