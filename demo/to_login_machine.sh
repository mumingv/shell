#!/bin/bash
##! @TODO: to
## 使用示例：to 123
username=`whoami`

function to_machine {
	machine=$1
	echo -ne "\e]2;$title_str\a"
	ssh $machine
	echo -ne "\e]2;${username}_dev\a"
	exit
}

CONF_FILE="`dirname $0`/to.conf"
grep_cmd=""
title_str=""
main_str="$1"
until [[ -z "$1" ]];
do
	grep_cmd="$grep_cmd | grep $1"
	title_str="$title_str|$1"
	shift
done
cmd="cat $CONF_FILE $grep_cmd | awk '{print \$2}'"
line_str=`eval $cmd`
if [[ -z $line_str ]];then
	line_str=`ssh tc-ps-login0.tc.baidu.com "lh $main_str $grep_cmd"`
	if [[ -z $line_str ]];then
		echo "cannot find machine by key: $title_str"
		exit
	fi
fi
wc=0
for machine in $line_str; do
	((wc++))
done
if [[ $wc == "1" ]];then
	to_machine $line_str
else 
	select machine in $line_str; do
		to_machine $machine
	done
fi
