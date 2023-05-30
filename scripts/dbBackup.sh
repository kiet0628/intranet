#!/bin/bash

echo ".....Enter wikidb connection password: "
DB_FILE=$HOME/dbBack$(date '+%Y-%m-%d').sql
echo $DB_FILE
/usr/pgsql-15/bin/pg_dump --host=$HOST_DB --dbname=wikidb --username=postgres --create > $DB_FILE

echo "Completed db backup..FILE: " $DB_FILE
ls -l $DB_FILE

# =============restore========
#
#database must be create in 1C Zone
#psql --host=wikidb.cnl05aa1bkf9.us-east-1.rds.amazonaws.com --username=postgres 
#create database wikidb;
#psql --host=wikidb.cnl05aa1bkf9.us-east-1.rds.amazonaws.com --username=postgres -d wikidb -f backup05282002.sql

