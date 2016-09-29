#!/bin/bash
# 文件系统相关测试：使用中括号[]

# 判断文件是否存在
if [ -f "./check_root.sh" ]; then
    echo "-f 判断文件是否存在"
fi

# 判断文件是否可执行
if [ -x "./check_root.sh" ]; then
    echo "-x 判断文件是否可执行"
fi

# 判断是否是目录
if [ -d "./" ]; then
    echo "-d 判断是否是目录"
fi

# 判断是否是目录
if [ -e "./" ]; then
    echo "-e 判断文件或者目录是否存在"
fi
if [ -e "./check_root.sh" ]; then
    echo "-e 判断文件或者目录是否存在"
fi

# 判断是否是字符设备文件
if [ -c "/dev/tty" ]; then
    echo "-c 判断是否是字符设备文件"
fi

# 判断是否是块设备文件
if [ -b "/dev/xvda" ]; then
    echo "-b 判断是否是块设备文件"
fi

# 判断文件是否可读
if [ -r "./check_root.sh" ]; then
    echo "-r 判断文件是否可读"
fi

# 判断文件是否可写
if [ -w "./check_root.sh" ]; then
    echo "-w 判断文件是否可写"
fi

# 判断文件是否是一个符号链接
if [ -L "/dev/stdin" ]; then
    echo "-L 判断文件是否是一个符号链接"
fi
