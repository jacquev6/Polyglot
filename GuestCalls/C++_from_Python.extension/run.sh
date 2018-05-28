#!/bin/sh

set -o errexit

g++ -fPIC -shared guest.cpp -o libguest.so

g++ -fPIC -shared $(pkg-config python2 --cflags) wrapper.cpp -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python2 host.py

g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 host.py
