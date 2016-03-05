#!/bin/bash
# 运算操作
# Author: Jie Yin

# 算术操作: let, [], (()), expr, br

# let - 整数运算
## 说明：使用let时，变量名之前可以不添加$，当然加上$也没有关系。
## 基本算术操作
echo -e "\e[1;32m使用let进行算术操作\e[0m"
no1=4
no2=5
let result=no1+no2  #等号左右以及加号左右都不能有空格, 变量加不加$都可以
let result=$no1+$no2  #等号左右以及加号左右都不能有空格, 变量加不加$都可以
echo $result
## 自增操作
let no1++
echo $no1
## 自减操作
let no1--
echo $no1
## 简写形式
let no1+=1
echo $no1
let no1-=1
echo $no1

# [] - 整数运算
echo -e "\e[1;32m使用[]进行算术操作\e[0m"
no3=7
no4=8
result2=$[no3 + no4]  #等号左右不能有空格, []内的任何位置都可以加空格，加号左右也可以加空格, 变量加不加$都可以
echo $result2
result2=$[$no3 + $no4]  #等号左右不能有空格, []内的任何位置都可以加空格，加号左右也可以加空格, 变量加不加$都可以
echo $result2

# (()) - 整数运算
echo -e "\e[1;32m使用(())进行算术操作\e[0m"
no5=9
no6=10
result3=$((no5 + no6))  #等号左右不能有空格, []内的任何位置都可以加空格，加号左右也可以加空格, 变量加不加$都可以
echo $result3
result3=$(($no5 + $no6))  #等号左右不能有空格, []内的任何位置都可以加空格，加号左右也可以加空格, 变量加不加$都可以
echo $result3

# expr - 整数运算
echo -e "\e[1;32m使用expr进行算术操作\e[0m"
no7=11
no8=12
result4=`expr $no7 + $no8`
echo $result4

# bc - 浮点数运算
echo -e "\e[1;32m使用bc进行算术操作\e[0m"
echo "4 * 0.56" | bc
no=7
result=`echo "$no * 1.5" | bc`
echo $result
## 设置浮点数运算结果的小数精度
echo "scale=2;1/8" | bc  #参数置于待运算的表达式之前并且以分号分隔
## 进制转换
no=100
echo "obase=2;$no" | bc  #不指定ibase时，ibase的默认取值为10
echo "obase=2;ibase=10;$no" | bc
no=1100100
echo "obase=10;ibase=2;$no" | bc
## 计算平方以及平方根
echo "sqrt(100)" | bc 
echo "10^10" | bc

