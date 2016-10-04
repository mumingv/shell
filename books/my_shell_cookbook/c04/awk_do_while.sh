#!/bin/bash
# awk的while语句

awk 'BEGIN {
    i = 1;
    sum = 0;
    do {
        sum += i;
        i++;
    } while (i <= 10);
    print sum;
}'
