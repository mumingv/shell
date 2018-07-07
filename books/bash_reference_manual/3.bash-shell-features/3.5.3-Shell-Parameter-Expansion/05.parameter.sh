#!/bin/bash

# 普通变量
string=01234567890abcdefgh
echo ${string:7}  # 7890abcdefgh
echo ${string:7:0}  # null
echo ${string:7:2}  # 78
echo ${string:7:-2}  # Mac报错：-2: substring expression < 0

echo ${string:-7}  # 错误写法，会被当做: ${parameter:-word}。得到值：01234567890abcdefgh
echo ${string: -7}  # bcdefgh
echo ${string: -7:0}  # null
echo ${string: -7:2}  # bc
echo ${string: -7:-2}  # Mac报错：-2: substring expression < 0

# 位置变量
set -- 01234567890abcdefgh  # 设置位置变量
echo ${1:7}  # 7890abcdefgh
echo ${1:7:0}  # null
echo ${1:7:2}  # 78
echo ${1:7:-2}  # -2: substring expression < 0
echo ${1: -7}  # bcdefgh
echo ${1: -7:0}  # null
echo ${1: -7:2}  # bc
echo ${1: -7:-2}  # -2: substring expression < 0

# 数组变量
array[0]=01234567890abcdefgh
echo ${array[0]:7}  # 7890abcdefgh
echo ${array[0]:7:0}  # null
echo ${array[0]:7:2}  # 78
echo ${array[0]:7:-2}  # -2: substring expression < 0
echo ${array[0]: -7}  # bcdefgh
echo ${array[0]: -7:0}  # null
echo ${array[0]: -7:2}  # bc
echo ${array[0]: -7:-2}  # -2: substring expression < 0


