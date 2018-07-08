#!/bin/bash

string=0123456789abcdefh
echo ${string#0123}  # 456789abcdefh
echo ${string##0123}  # 456789abcdefh

string=0123456789abcdefh
echo ${string%defh}  # 0123456789abc
echo ${string%%defh}  # 0123456789abc
