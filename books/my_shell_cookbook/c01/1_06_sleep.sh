#!/bin/bash
# 使用tput和sleep进行计数

echo -n "Count:"

# 存储光标位置(store cursor)
tput sc

count=0
while true; do
    if [ $count -le 40 ]; then
        # 恢复光标位置(restore cursor)
        tput rc
        # 清除光标位置到行末的内容
        tput ed
        # echo一定要使用-n参数，确保输出不换行
        echo -n "$count"
        let count++
        sleep 1
    else
        exit 0 
    fi
done
