#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

g++ wrapper.cpp ./host.cpp -L. -lguest -o host.exe

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./host.exe
