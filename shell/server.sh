#!/bin/bash
SERVER='akagp-provider-account-bcoin'
ID=`ps -ef|grep $SERVER|grep -v grep|awk  '{print  $2}' `
cd ~/work/$SERVER
git pull origin dev
mvn clean package
rm -rf ~/server/$SERVER*.jar
cp ~/work/$SERVER/target/$SERVER*.jar ~/server/
kill -9 $ID
java -Xms512m -Xmx512m -XX:PermSize=256m -XX:MaxPermSize=256m -XX:MaxNewSize=256m -jar ~/server/$SERVER*.jar &