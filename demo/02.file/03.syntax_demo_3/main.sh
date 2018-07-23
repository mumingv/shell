#!/bin/bash
# Usage: sh main.sh
# 说明：使用for...var...in...file方式处理文件的每一行

for line in $(cat query_list.txt)
do
    echo "File-3 line: ${line}"
done


