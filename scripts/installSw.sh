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

# =======================================================================
# Install wiki.js
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

# =======================================================================
# Install Tomcat and wikijsp
pushd $DOWNLOADS
  if [ ! -f "apache-tomcat-9.0.75.tar.gz" ]; then
	wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
  fi
  if [ ! -f "JSPWiki.war" ]; then
	wget https://downloads.apache.org/jspwiki/2.11.3/binaries/webapp/JSPWiki.war
  fi
popd

pushd $PRJ
	tar -xvf $DOWNLOADS/apache-tomcat-9.0.75.tar.gz
	rm -rf $TC/webapps/docs
	rm -rf $TC/webapps/examples
	rm -rf $TC/webapps/host-*
	rm -rf $TC/webapps/manager
	rm -rf $TC/webapps/ROOT

	cp $DOWNLOADS/JSPWiki.war $TC/webapps/ROOT.war
popd



echo ".................Completed Install SW."

