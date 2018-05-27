#!/bin/sh

set -o errexit

g++ -I. ../host.c wrapper.cpp -L.. -lguest_cpp -o host.exe

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH ./host.exe
