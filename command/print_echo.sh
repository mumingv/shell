#!/bin/bash
# Command: echo
# Function: 打印信息到终端
# Author: Jie Yin

# 可以使用单引号
echo '1. Hello world!'

# 可以使用双引号
echo "2. Hello world!"

# 可以不带引号
echo 3. Hello world!

## 一些提示&约束
## 1. echo命令打印字符串时，会在行尾默认插入一个换行符;
## 2. 要打印分号(;)时，必须将其放在单引号或者双引号当中;

# 不想让echo命令在行尾默认插入一个换行符，可以使用-n参数
echo -n "4. No new line!"

# 输出一个换行符
echo 

# 识别转义字符，使用-e参数，且字符串必须用单引号或双引号包含
echo -e '1\t2\t3\t'
echo -e "4\t5\t6\t"

# 彩色字体颜色(0-取消颜色设置，30-黑色，31-红色，32-绿色，33-黄色，34-蓝色，35-洋红，36-青色，37-白色)
# \e[31m 也可以使用大写形式 \E[31m (其中的m不能使用大写形式)
echo -e "\e[31mThis is red text.\e[0m"
echo -e "\E[31mThis is red text.\e[0m"
echo -e "\e[1;31mThis is red text.\e[0m"

# 彩色背景颜色(0-取消颜色设置，40-黑色，41-红色，42-绿色，43-黄色，44-蓝色，45-洋红，46-青色，47-白色)
echo -e "\e[43mThis green background.\e[0m"
echo -e "\e[1;43mThis green background.\e[0m"

