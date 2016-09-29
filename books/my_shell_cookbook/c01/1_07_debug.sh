#!/bin/bash
# 调试脚本

for i in {1..3};
do 
    set -x
    echo $i
    set +x
done
echo "Script executed"
