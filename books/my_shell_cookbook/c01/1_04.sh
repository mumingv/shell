#!/bin/bash
# 重定向多行文本

# EOF(不包括)之前的文本行会被重定向到log.txt文件
cat<<EOF>>log.txt
LOG FILE HEADER
This is a test log file
Function: System statistics
EOF
