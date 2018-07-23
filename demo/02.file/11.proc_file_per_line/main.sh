#!/bin/bash
# Usage: sh main.sh -f <filename>

# 参数处理
while getopts "f:" arg
do
    case $arg in
        f)
            filename=$OPTARG
            ;;
        ?)
            echo "unkonw argument"
            exit 1
            ;;
    esac
done

if [ $# -ne 2 ]; then
    echo 'Usage: sh main.sh -f <filename>'
    exit
fi

if [ "$filename" == "" ]; then
    echo "filename is null"
    exit
fi

if [ ! -f $filename ]; then
    echo "file: ${filename} is not exist"
    exit
fi


# 逐行处理文件
while read line
do
    echo "File line: $line" 
done < $filename



