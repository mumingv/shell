#!/bin/bash

# 连接自定义字符串
name='Jay'
tel='18612345678'
echo ${name}${tel}

# 连接Shell系统变量字符串
echo "Hello"$1
