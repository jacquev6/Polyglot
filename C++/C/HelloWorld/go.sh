#!/bin/sh

set -o errexit

echo "Static linking"

gcc -c hello.c -o hello.o

g++ main.cpp hello.o -o main

./main

echo "Dynamic linking"

gcc -shared -fPIC hello.c -o libhello.so

g++ main.cpp -L. -lhello -o main

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./main
