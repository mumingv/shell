#!/bin/bash
# 标准变量和环境变量
# Author: Jie Yin

## 1. 在Bash中，每个变量的值都存储为字符串，不论在给变量赋值的时候有没有使用引号;
## 2. 常见的环境变量: HOME, PWD, USER, UID, SHELL, PS1, LD_LIBRARY_PATH
## UID - 用户ID, root的UID为0
## PS1 - 命令提示符
## LD_LIBRARY_PATH - Lib库路径

# 变量赋值方式: VAR=value
NAME=mumingv
## 1. 如果变量中有空白字符，则需要使用单引号或者双引号包含；否则不需要使用引号;
## 2. 等号左右不能有空格，如果有空格的话就不是赋值而是判定相等了;

# 打印变量，可以使用如下两种方式
echo -e "\e[1;32m打印变量\e[0m"
echo $NAME
echo ${NAME}
## 单引号中的变量不会被扩展，将依照原样显示；而双引号中的变量会被扩展
echo -e "\e[1;32m变量扩展测试\e[0m"
echo '$NAME aaa'
echo "$NAME aaa"
echo $NAME aaa  #不带引号时，变量也会被扩展

# 获取变量(字符串)的长度
echo -e "\e[1;32m变量长度\e[0m"
echo "[${NAME}]'s length is ${#NAME}"

# 获取当前所使用的shell
echo -e "\e[1;32m获取当前所使用的shell\e[0m"
echo $SHELL
echo $0
echo -e "\e[1;31m[问题]直接在命令提示符下执行 echo $0 是OK的，运行脚本的话显示的是当前脚本的名称\e[0m"
## [问题]直接在命令提示符下执行 echo $0 是OK的，运行脚本的话显示的是当前脚本的名称

# 检查当前脚本是以超级用户(root)还是普通用户运行的
echo -e "\e[1;32m检查当前用户是超级用户还是普通用户\e[0m"
if [ $UID -ne 0 ]; then
    echo "Not root user. Please run as root."
else
    echo "Root user."
fi

