#!/bin/sh

set -o errexit

g++ -c wrapper.cpp -o wrapper.o

gcc -I. ../host.c wrapper.o -L.. -lguest_cpp -lstdc++ -o host.exe

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH ./host.exe
