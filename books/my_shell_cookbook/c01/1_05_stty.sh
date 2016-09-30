#!/bin/bash
# 密码读取, 不显示密码

echo -n "Enter password: "
stty -echo
read password
stty echo
echo
echo "Password read."
