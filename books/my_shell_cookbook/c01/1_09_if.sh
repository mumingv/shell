#!/bin/bash
# if语句的三种方式, 条件测试使用[]表示

# if...then...fi
if [ 6 -gt 0 ]; then
    echo "6 > 0"
fi

# if...then...else...fi
if [ 6 -gt 0 ]; then
    echo "6 > 0"
else
    echo "6 <= 0"
fi

# if...then...else if...then...else...fi
if [ 6 -gt 8 ]; then
    echo "6 > 8"
elif [ 6 -gt 0 ]; then
    echo "6 > 0"
else
    echo "6 <= 0"
fi

# 多个条件
if [ 6 -gt 0 -a 6 -lt 10 ]; then
    echo "6 > 0 && 6 < 10"
fi
