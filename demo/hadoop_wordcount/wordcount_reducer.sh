#! /bin/bash
#/***********************************************************
#      FileName: wordcount_reducer.sh
#          Desc: 单词统计程序(hadoop streaming使用)
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-12-17 20:41:37
#       History:
# ***********************************************************/

# 重要说明：该脚本的输入要求输入数据已经做好了排序。如下所示：
# Angela 1
# Henry 1
# Jay 1
# Jay 1

count=0
word=""
while read LINE; do
  newword=`echo $LINE | cut -d ' '  -f 1`
  if [[ $newword != $word ]];then
    [ $count -ne 0 ] && echo -e "$word\t$count"
    word=$newword
    count=1
    started=1
  else
    count=$(( $count + 1 ))
  fi
done
echo -e "$word\t$count"


