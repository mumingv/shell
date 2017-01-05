#!/bin/sh
#/***********************************************************
#      FileName: rename.sh
#          Desc: 批量修改文件名称
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2017-01-05 17:45:57
#       History:
# ***********************************************************/

# Usage: sh rename.sh {rmhead | ...} <string>

if [[ $# -ne 2 ]]; then
    echo "not eqal"
    exit
fi

method=$1
string=$2

if [[ $method == rmhead ]]; then
    for i in *; do
        newname=`echo $i | sed -r "s/^${string}//"`
        if [[ $newname != $i ]]; then
            mv $i $newname
        fi
    done
fi







