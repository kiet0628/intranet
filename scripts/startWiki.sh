#!/bin/bash

# crontab -e
# @reboot date >> ~/rebootDate.txt;  cd /data/intranet/scripts/; ./startWiki.sh > /data/intranet/wiki/wiki.log

. /home/ec2-user/.bash_profile

pushd $PRJ/scripts
	./stopWiki.sh
popd 
sleep 1


echo ".....Starting node server"
pushd $PRJ/wiki
	. /home/ec2-user/.nvm/nvm.sh
	nvm install 16
	mkdir -p logs
	mv nohup.out logs 2>/dev/null
	nohup node server &
popd 

sleep 3
ps -ef | grep "node server"

echo "Completed Starting Node Server....."


