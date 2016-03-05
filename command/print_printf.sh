#!/bin/bash
# Command: printf
# Function: 打印信息到终端
# Author: Jie Yin

## printf命令和C函数中的printf函数使用方法类似

printf "%-5s%-10s%-5s\n" No Name Score
printf "%-5s%-10s%-5.2f\n" 1 Zhao 66.66666
printf "%-5s%-10s%-5.2f\n" 2 Qian 77.77777
printf "%-5s%-10s%-5.2f\n" 3 Sun 88.88888

## printf不会在行尾默认添加换行符，需要和C语言一样手工添加

