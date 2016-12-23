#!/bin/sh
#sh run_command_in_remote.sh "shell command"
cd $(dirname $0)
CUR_PWD=$(pwd)
HOME=/home/work
for HOST in $(cat hosts_boss);do
    if [ "x$2" == "x" ];then
        echo "$HOST"
    fi
    ssh work@$HOST $1
done

