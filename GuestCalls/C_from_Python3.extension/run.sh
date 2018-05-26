#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

# This is the manual way to compile the module. This can be abstracted away using 'ext_modules' in setup.py
gcc -fPIC -shared $(pkg-config python3 --cflags) wrappermodule.c -L. -lguest -o wrapper.so

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH python3 host.py
