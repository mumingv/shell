#!/bin/bash
#/***********************************************************
#      FileName: wordcount_mapper.sh
#          Desc: 单词统计程序(hadoop streaming使用)
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-12-17 20:23:24
#       History:
# ***********************************************************/
while read LINE; do
    for word in $LINE; do
        echo "$word 1"
    done
done
