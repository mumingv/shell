#!/bin/bash
# 检查文件中是否含有用户指定的字符串

if [ $# -ne 2 ]; then
    echo "Usage: $0 <match_text> <filename>"
    exit 1
fi

grep -q $1 $2

if [ $? -ne 0 ]; then
    echo "Search fail!"
else
    echo "Search success!"
fi

