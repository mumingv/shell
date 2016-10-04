#!/bin/bash
# awk的if语句

echo | awk '{
    var=60;
    if (var > 100) {
        print "big";
    } else if (var > 50) {
        print "ok"; 
    } else {
        print "small";
    }
}'
