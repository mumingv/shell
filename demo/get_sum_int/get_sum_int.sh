#!/bin/sh
# 统计求和，输入文件中每个数字一行
# Usage: sh get_sum.sh <file>

if [[ ! -e $1 ]]; then
    echo 'Usage: sh get_sum.sh <file>'
    exit
fi

I=0

for N in `cat $1`
do
    I=`expr $I + $N`
done

echo $I
