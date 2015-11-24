#!/bin/sh

set -o errexit

g++ -shared $(pkg-config python3 --cflags) -fPIC hello.cpp -o hello.so

./main.py
