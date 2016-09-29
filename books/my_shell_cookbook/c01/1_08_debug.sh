#!/bin/bash
# 调试脚本: 使用自定义格式显示调试信息

# $@指代函数的所有参数(构成的命令)
# :命令表示shell不要做任何操作
function DEBUG() {
    [ "$_DEBUG" == "on" ] && $@ || :
}

for i in {1..3}
do
    DEBUG echo "D--> $i"
done
