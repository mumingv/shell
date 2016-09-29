#!/bin/bash
# 字符串比较：需要使用两个中括号[[]]

# 大于
if [[ "def" > "abc" ]]; then
    echo ">"
fi

# 大于等于(不支持)

# 小于
if [[ "abc" < "def" ]]; then
    echo "<"
fi

# 小于等于(不支持)

# 等于(使用=或==都可以)
if [[ "abc" = "abc" ]]; then
    echo "="
fi

if [[ "abc" == "abc" ]]; then
    echo "=="
fi

# 不等于
if [[ "abc" != "def" ]]; then
    echo "!="
fi

# 空字符串
if [[ -z "" ]]; then
    echo "empty string"
fi

# 非空字符串
if [[ -n "abc" ]]; then
    echo "non-empty string"
fi
