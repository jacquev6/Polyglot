#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

python2 host.py

python3 host.py
