#!/bin/bash
# awk的for语句

awk 'BEGIN {
    for (i = 1; i <= 3; i++) {
        array[i] = i * i;
        print i"^2 = "array[i];
    }

    print
    for (i = 1; i <= length(array); i++) {
        if (array[i] > 5) {
            break;
        }
        print i"^2 = "array[i];
    }
}'
