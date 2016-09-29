#!/bin/bash
# 字符串比较：需要使用两个中括号[[]]

# 大于
if test "def" > "abc" ; then
    echo ">"
fi

# 大于等于(不支持)

# 小于(小于号<需要转义)
if test "abc" \< "def" ; then
    echo "<"
fi

# 小于等于(不支持)

# 等于(使用=或==都可以)
if test "abc" = "abc" ; then
    echo "="
fi

if test "abc" == "abc" ; then
    echo "=="
fi

# 不等于
if test "abc" != "def" ; then
    echo "!="
fi

# 空字符串
if test -z "" ; then
    echo "empty string"
fi

# 非空字符串
if test -n "abc" ; then
    echo "non-empty string"
fi
