#!/bin/bash
# 查看函数的返回值

is_started() {
    netstat -ntpl | grep 22 > /dev/null
    echo "is_started() is called."
    return 3
}

is_started  # 函数执行后，返回值会保存在 $? 当中
echo $?
