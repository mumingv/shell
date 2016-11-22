#/***********************************************************
#      FileName: check_date.sh
#          Desc: 比较两个日期的大小
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-11-22 16:26:53
#       History:
# ***********************************************************/
#/bin/bash

# 使用指定的日期和当前日期相比
year=2016
month=11
day=21

# 将日期/时间转换成时间戳的形式
date=${year}-${month}-${day}  # 2016-11-30
today=`date +%F`  # 2016-11-22

t_date=`date -d "$date" +%s`
t_today=`date -d "$today" +%s`

# 比较两个日期
if [ $t_date -lt $t_today ]; then
    echo "Given date is older"
else
    echo "Given date is newer"
fi


