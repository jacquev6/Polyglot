#!/bin/sh

set -o errexit

g++ -fPIC -shared hello_c.cpp -L../../guests/C++ -lhello -o libhello_c.so

gcc main.c -L. -lhello_c -L../../guests/C++ -lhello -o main

LD_LIBRARY_PATH=../../guests/C++:$LD_LIBRARY_PATH ./main
