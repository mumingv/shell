#!/bin/bash
# Usage: sh main.sh
# 说明：使用while...read...line方式处理文件的每一行

cat query_list.txt | while read line
do
    echo "File line: ${line}"
done

