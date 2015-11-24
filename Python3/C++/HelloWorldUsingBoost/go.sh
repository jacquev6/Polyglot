#!/bin/sh

set -o errexit

g++ -shared $(pkg-config python3 --cflags) -fPIC hello.cpp -lboost_python-py34 -o hello.so

./main.py
