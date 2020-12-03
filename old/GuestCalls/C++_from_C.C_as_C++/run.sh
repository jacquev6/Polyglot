#!/bin/sh

set -o errexit

g++ -fPIC -shared guest.cpp -o libguest.so

g++ host.c wrapper.cpp -L. -lguest -o host.exe

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./host.exe
