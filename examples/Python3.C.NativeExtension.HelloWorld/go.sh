#!/bin/sh

set -o errexit

gcc -shared $(pkg-config python3 --cflags) -fPIC hellomodule.c -L../../guests/C -lhello -o hello.so

LD_LIBRARY_PATH=../../guests/C:$LD_LIBRARY_PATH ./main.py
