#!/bin/sh

set -o errexit

g++ -shared $(pkg-config python3 --cflags) -fPIC hellomodule.cpp -L../../guests/C++ -lhello -o hello.so

LD_LIBRARY_PATH=../../guests/C++:$LD_LIBRARY_PATH ./main.py