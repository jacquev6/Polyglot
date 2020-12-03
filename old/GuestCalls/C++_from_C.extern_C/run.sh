#!/bin/sh

set -o errexit

g++ -fPIC -shared guest.cpp -o libguest.so

g++ -c wrapper.cpp -o wrapper.o

gcc host.c wrapper.o -L. -lguest -lstdc++ -o host.exe

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./host.exe
