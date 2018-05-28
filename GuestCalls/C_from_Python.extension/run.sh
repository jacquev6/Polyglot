#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

gcc -fPIC -shared $(pkg-config python2 --cflags) wrapper.c -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python2 ./host.py

gcc -fPIC -shared $(pkg-config python3 --cflags) wrapper.c -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ./host.py
