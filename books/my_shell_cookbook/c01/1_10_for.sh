#!/bin/bash
# 循环语句：for

# 分割遍历字符串: 带IFS
IFS=":"
count=0
line="a:b:c"
for var in $line; do
    echo "$count --> $var"
    let count++
done
# for语句里in后面的字符串必须写成变量的方式，不能直接写字符串字面值

# 遍历数字列表
for i in {0..2}; do
    echo "number --> $i"
done

# 遍历字母列表
for c in {a..c}; do
    echo "char --> $c"
done

# 遍历数组元素
arr=("apple" "banana" "orange")
for fruit in ${arr[*]}; do
    echo "fruit --> $fruit"
done



# 如何遍历字符串中的字符


##################  C语言格式  #################

# 遍历数组元素
arr=("apple" "banana" "orange")
for ((i=0; i<${#arr[*]}; i++)) {
    echo "C: fruit --> ${arr[$i]}"
}
