#!/bin/bash
# 函数返回值

function f() {
    echo "f() is called"
    return 3
}

echo `f`  # 不打印任何值（因为函数f的返回值保存在了$?当中，而不会作为echo的输入）
