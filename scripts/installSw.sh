#!/bin/bash

echo "Install SW."
export TMP=$PRJ/tmp

mkdir -p $TMP

pushd $TMP
  if [ ! -f "apache-tomcat-9.0.75.tar.gz" ]; then
	wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
  fi
  if [ ! -f "JSPWiki.war" ]; then
	wget https://downloads.apache.org/jspwiki/2.11.3/binaries/webapp/JSPWiki.war
  fi
popd

pushd $PRJ
	
	tar -xvf $TMP/apache-tomcat-9.0.75.tar.gz
	rm -rf $TC/webapps/docs
	rm -rf $TC/webapps/examples
	rm -rf $TC/webapps/host-*
	rm -rf $TC/webapps/manager
	rm -rf $TC/webapps/ROOT

	cp $TMP/JSPWiki.war $TC/webapps/ROOT.war
popd


echo "Completed Install SW."

