#!/usr/bin/env bash

#如果属于java项目返回1，否则返回0
check_project_name(){
#定义项目名称
local string="admin,bitrade-job,chat,cloud,core,docs,exchange-api,exchange-core,exchange"
local array=(${string//,/ })
local name=$1
#echo "name $name"
#对array进行循环，判断git提交过来的信息是否包含项目名称
 for n in ${array[@]}
    do
        echo "ee $n"
        if [ $name == $n ]
        then
#            exit
           return 1
        fi
    done
    return 0
}
#string="hello,shell,split,test"
#arr=(${string//,/ })
check_project_name "chat"
result=$?
echo "result = $result"