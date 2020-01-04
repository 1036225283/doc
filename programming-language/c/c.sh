#!/usr/bin/env bash

# 1	编写自己的动态库
# 2	调用自己的动态库
# document	https://blog.csdn.net/vincent2610/article/details/56290782

# 创建动态链接库
gcc -shared -fPIC -o show.so show.c

gcc -shared -fPIC show.c -o show.so


# 输出可执行文件
gcc  -l user -l show  -o hello.sh main/hello.c
gcc  -l user -l show ./main/*.c  -o hello.sh

gcc  -l user -l show `pkg-config --cflags --libs protobuf` ./main/*.c  -o hello.sh
gcc  -l user -l show `pkg-config --cflags --libs protobuf` ./main/*.c  -o hello.sh

# 链接 /lib /usr/lib /usr/local/lib			libtest.so
gcc -l test

# 头文件	/usr/include
gcc -I /usr/include

gcc -Wall  #显示所有警告

# include_path    改成你头文件的目录
# lib_path           改成你动态库文件的目录
# -lyourlib           改成l加上你要引用的库文件名字
# 比如libmax.so就改成-lmax
gcc   test.c   -o   test   -I   include_path   -L   lib_path   -lyourlib


#临时指定运行lib path
export LD_LIBRARY_PATH=/Users/xws/CLionProjects/helloWorld/user/:$LD_LIBRARY_PATH

# 指定动态链接库运行
LD_LIBRARY_PATH=.  ./main.sh

# 使用 gcc 编译时将 头文件 路径添加到 C_INCLUDE_PATH 系统环境变量中；
# 使用 g++ 编译时将 头文件 路径添加到 CPLUS_INCLUDE_PATH 系统环境变量中；
# 将 动态连接库 路径添加到 LD_LIBRARY_PATH 系统环境变量中；
# 将 静态库 路径添加到 LIBRARY_PATH 系统变量中。

