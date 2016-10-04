#!/bin/bash
# awk的while语句

awk 'BEGIN {
    i = 1;
    sum = 0;
    while (i <= 10) {
        sum += i;
        i++;
    }
    print sum;
}'
