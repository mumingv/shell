#!/bin/bash
# printf函数

#No   Name      Score
#1    Zhao      66.67
#2    Qian      77.78
#3    Sun       88.89

# 格式替换符有：%s(字符串), %c(字符), %d(整数), %f(浮点数)
printf "%-5s%-10s%-5s\n" No Name Mark
printf "%-5s%-10s%-4.2f\n" 1 Zhao 66.6777
printf "%-5s%-10s%-4.2f\n" 2 Qian 77.7888
printf "%-5s%-10s%-4.2f\n" 3 Sun 88.8999
