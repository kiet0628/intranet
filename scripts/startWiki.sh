#!/bin/bash



pushd $PRJ/scripts
	./stopWiki.sh
popd 

echo ".....Starting node server"
pushd $PRJ/wiki
	nvm install 16
	nohup node server &
popd 

ps -ef | grep "node server"

echo "Completed Starting Node Server....."


