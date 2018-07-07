#!/bin/bash

para=test
VAR=${para:?word}
echo ${VAR}  # test
echo ${para}  # test
echo 'output-1'

para=
VAR=${para:?word}
echo 'output-2'
echo ${VAR}  # word
echo ${para}  # word

