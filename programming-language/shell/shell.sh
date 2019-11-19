#!/usr/bin/env bash

#如何读取脚本的参数,根据$#读取参数个数，然后根据$1 $2 来读取

#echo 'test'
#echo $1
#echo $#

PACKAGE_CONFIG="`pwd`/.package.ncf"
#log "package config = "

echo 'test' $PACKAGE_CONFIG

#通过
while getopts 'a:b:c' name
do
    case $name in
a)
    echo    'this is a'
    echo '$'"$1"
#    ls -al
;;
b) sdfecho'this is b'
#    ls -l $OPTARG
;;
c)
    modules=()
    echo 'this is param c'
    len=$#
    echo 'param size = ' "$len"
    echo 'param c the optind = ' "$OPTIND"
    for (( i = $OPTIND; i < ${len}; i++ )); do
        echo 'echo ' "$i"
    done

;;
esac
done
