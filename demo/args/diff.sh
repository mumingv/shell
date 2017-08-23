#!/bin/bash
# Usage: sh diff.sh -f 20170810 -t 20170817

echo 'process "$*":'
for arg in "$*"
do
    echo $arg
done

echo
echo 'process "$@":'
for arg in "$@"
do
    echo $arg
done
