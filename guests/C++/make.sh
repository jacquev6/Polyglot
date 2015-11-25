#!/bin/sh

set -o errexit

g++ -fPIC -shared hello.cpp -o libhello.so
