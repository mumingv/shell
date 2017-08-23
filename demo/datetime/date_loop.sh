#/bin/bash
#/***********************************************************
#      FileName: date_loop.sh
#          Desc: 遍历输出日期范围
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-11-22 17:07:18
#       History:
# ***********************************************************/

start="2016-10-01" 
end="2016-11-21"


end=`date -d "1 day ${end}" +%Y-%m-%d`    # 日期自增
while [[ ${start} < ${end} ]]
do
  echo ${start}
  start=`date -d "1 day ${start}" +%Y-%m-%d`    # 日期自增
done
