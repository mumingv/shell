#!/bin/bash

para=test
VAR=${para:=word}
echo ${VAR}  # test
echo ${para}  # test

para=
VAR=${para:=word}
echo ${VAR}  # word
echo ${para}  # word

