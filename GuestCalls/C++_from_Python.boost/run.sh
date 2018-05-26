#!/bin/sh

set -o errexit

g++ -fPIC -shared guest.cpp -o libguest.so

# This is the manual way to compile the module. This can be abstracted away using 'ext_modules' in setup.py
g++ -fPIC -shared $(pkg-config python2 --cflags) wrapper.cpp -lboost_python-py27 -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH python2 host.py

g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -lboost_python-py36 -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH python3 host.py
