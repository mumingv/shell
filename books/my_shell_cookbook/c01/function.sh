#!/bin/bash
# 函数

# 定义函数: 不用function关键字
show_param_info() {
    echo "函数参数个数：$#"
}

# 定义函数: 用function关键字
function show_return_info() {
    # 命令':'什么也不做
    :
    echo "命令返回值(退出状态)：$?"
}

# 调用函数：不带参数
show_param_info
# 调用函数：带3个参数
show_param_info a b c

# 调用函数：不带参数
show_return_info
