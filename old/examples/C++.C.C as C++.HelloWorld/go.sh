#!/bin/sh

set -o errexit

g++ -shared -fPIC ../../guests/C/hello.c -o libhello.so

g++ main.cpp -L. -lhello -o main

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./main
