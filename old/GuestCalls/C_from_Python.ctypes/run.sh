#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

PYTHONPATH=.:$PYTHONPATH python2 ./host.py

PYTHONPATH=.:$PYTHONPATH python3 ./host.py
