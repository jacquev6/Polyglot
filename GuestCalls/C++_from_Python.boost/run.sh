#!/bin/sh

set -o errexit

g++ -fPIC -shared $(pkg-config python2 --cflags) wrapper.cpp -lboost_python-py27 -L.. -lguest_cpp -o wrapper.so

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python2 ../host.py

g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -lboost_python-py36 -L.. -lguest_cpp -o wrapper.so

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ../host.py
