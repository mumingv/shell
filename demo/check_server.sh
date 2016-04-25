#/***********************************************************
#      FileName: check_server.sh
#          Desc: 检查nginx服务器的状态
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-04-25 19:29:43
#       History:
# ***********************************************************/
#/bin/bash

resettem=$(tput sgr0)
nginx_server=http://123.56.21.232/
check_nginx_server() {
    status_code=$(curl -m 5 -s -w %{http_code} -o /dev/null ${nginx_server})
    if [ $status_code -eq 000 -o $status_code -ge 500 ]; then
        echo -e '\e[32m' "check http server error! status code is" $resettem $status_code
    else
        http_content=$(curl -s ${nginx_server})
        echo -e '\E[32m' "check http server successfully!\n" $resettem $http_content
    fi
}
check_nginx_server

