#!/bin/bash
# 10进制数转成二进制数

no=100
echo "obase=2;$no" | bc
