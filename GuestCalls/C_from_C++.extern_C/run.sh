#!/bin/sh

set -o errexit

g++ wrapper.cpp host.cpp -L.. -lguest_c -o host.exe

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH ./host.exe
