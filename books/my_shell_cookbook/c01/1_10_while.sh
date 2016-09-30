#!/bin/bash
# 循环语句：while

# while...do...done
i=0
while [ $i -lt 3 ]; do
    echo "number --> $i"
    let i++
done

# 使用true
i=0
while true; do
    if [ $i -lt 3 ]; then
        echo "true: number --> $i"
    else
        break    
    fi
    let i++
done
