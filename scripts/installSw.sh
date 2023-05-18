#!/bin/bash

echo "Install SW."
. ~/.bash_profile
export DOWNLOADS=$PRJ/downloads

mkdir -p $DOWNLOADS

pushd $DOWNLOADS
  if [ ! -f "wiki-js.tar.gz" ]; then
	wget https://github.com/Requarks/wiki/releases/latest/download/wiki-js.tar.gz
  fi
popd

pushd $PRJ
	rm -rf wiki
	mkdir -p wiki	
	cd wiki
	tar -xf $DOWNLOADS/wiki-js.tar.gz
	cp $PRJ/config/config.*  .

	echo "............Install Node Server."
 	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
   	. ~/.nvm/nvm.sh
   	nvm install --lts

	# downgrade to nvm version 16
	nvm install 16
	echo "!!!Must run!!!>> 'nvm install 16' as this is env context; need to run outside of script."
   	# node server  , this command to start



popd


echo ".................Completed Install SW."

