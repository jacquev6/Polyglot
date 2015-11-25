#!/bin/sh

set -o errexit

gcc -shared $(pkg-config python3 --cflags) -fPIC hello.c -o libhello.so

./main.py
