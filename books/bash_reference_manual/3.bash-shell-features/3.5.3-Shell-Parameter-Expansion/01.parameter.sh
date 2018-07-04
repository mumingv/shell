#!/bin/bash

para=test
VAR=${para:-word}
echo ${VAR}  # test

para=
VAR=${para:-word}
echo ${VAR}  # word

