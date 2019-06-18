#!/usr/bin/env bash

string="hello,shell,split,test"
array=(${string//,/ })

echo "获取数组的值：${array_name[index]}"
echo ${array[0]}
a=${array[0]}

a=redis
echo $a
ID=`ps -ef|grep $a|grep -v grep|awk  '{print  $2}' `
for var in ${array[@]}
do
   echo $var
done