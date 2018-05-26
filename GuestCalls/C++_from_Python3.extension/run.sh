#!/bin/sh

set -o errexit

g++ -fPIC -shared guest.cpp -o libguest.so

# This is the manual way to compile the module. This can be abstracted away using 'ext_modules' in setup.py
g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH python3 host.py
