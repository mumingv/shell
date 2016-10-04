#!/bin/bash
# length(array)函数应用于数组

awk 'BEGIN {
    array[0] = 0;
    array[1] = 1;
    array[2] = 2;
    array[3] = 3;
    array[4] = 4;
    print length(array);
}'
