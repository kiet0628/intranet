#!/bin/bash

echo "Install SW."
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
	tar -xvf $DOWNLOADS/wiki-js.tar.gz
	cp $PRJ/config/config.* wiki
popd


echo ".................Completed Install SW."

