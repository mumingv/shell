#!/bin/bash
# 循环语句：until(一直执行循环，直到条件为真)

# until...do...done
i=0
until [ $i -eq 3 ]; do
    echo "number --> $i"
    let i++
done
