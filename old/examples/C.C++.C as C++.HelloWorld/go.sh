#!/bin/sh

set -o errexit

g++ main.c -L../../guests/C++ -lhello -o main

LD_LIBRARY_PATH=../../guests/C++:$LD_LIBRARY_PATH ./main