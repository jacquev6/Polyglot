#!/bin/sh

set -o errexit

g++ -shared $(pkg-config python2 --cflags) -fPIC hello.cpp -lboost_python-py27 -o hello.so

./main.py
