#!/bin/bash
# 查看函数的返回值

is_started() {
    netstat -ntpl | grep 22 > /dev/null
    echo "is_started() is called."
    return 3
}

echo "`is_started`"  # 不会打印任何值
