#!/bin/sh

set -o errexit

# This is the manual way to compile the module. This can be abstracted away using 'ext_modules' in setup.py
gcc -fPIC -shared $(pkg-config python2 --cflags) wrapper.c -L.. -lguest_c -o wrapper.so

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python2 ../host.py

gcc -fPIC -shared $(pkg-config python3 --cflags) wrapper.c -L.. -lguest_c -o wrapper.so

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ../host.py
