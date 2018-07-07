#!/bin/bash

string=01234567890abcdefgh

echo ${string:7}  # 7890abcdefgh
echo ${string:7:0}  # null
echo ${string:7:2}  # 78
echo ${string:7:-2}  # Mac报错：-2: substring expression < 0

echo ${string:-7}  # 错误写法，会被当做: ${parameter:-word}。得到值：01234567890abcdefgh
echo ${string: -7}  # bcdefgh
echo ${string: -7:0}  # null


