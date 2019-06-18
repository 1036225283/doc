#!/bin/bash
cd /root/.jenkins/workspace/test1/ucenter-api
workspack=/root/.jenkins/workspace/test1/ucenter-api
mkdir test
echo "SCM_CHANGELOG = $SCM_CHANGELOG" >> a.txt
array=(${SCM_CHANGELOG//,/ })
SERVER=${array[0]}
ID=`ps -ef|grep $SERVER|grep -v grep|awk  '{print  $2}' `
cd ~/work/$SERVER
rm -rf ~/server/$SERVER*.jar
cp ~/$workspack/target/$SERVER*.jar ~/server/
kill -9 $ID
java -Xms512m -Xmx512m -XX:PermSize=256m -XX:MaxPermSize=256m -XX:MaxNewSize=256m -jar ~/server/$SERVER*.jar &