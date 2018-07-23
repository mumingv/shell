#!/bin/bash
# Usage: sh main.sh
# 说明：使用while...read...line方式处理文件的每一行

while read line
do
    echo "File-2 line: ${line}"
done < query_list.txt

