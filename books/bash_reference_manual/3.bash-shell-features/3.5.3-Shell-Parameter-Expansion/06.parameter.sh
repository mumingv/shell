#!/bin/bash

para_1=test_1
para_2=test_2
para_3=test_3

echo ${!para*}  # para_1 para_2 para_3
echo ${!para@}  # para_1 para_2 para_3

