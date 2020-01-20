#!/bin/bash

old_block=`curl  http://127.0.0.1:8898/v1/chain/get_info | awk -F ":" '{print $4}' | awk -F "," '{print $1}'`
sleep 3
new_block=`curl  http://127.0.0.1:8898/v1/chain/get_info | awk -F ":" '{print $4}' | awk -F "," '{print $1}'`
date=`date`

if [[ $new_block > $old_block ]];then
   echo $date eos节点正常 >> /opt/eos.log
else
   echo $date eos挂了正在重启 >> /opt/eos.log
   pkill nodeos
   nohup nodeos --data-dir /eos/data/ --filter-on test:transfer: &
fi
