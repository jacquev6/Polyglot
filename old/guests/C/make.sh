#!/bin/sh

set -o errexit

gcc -fPIC -shared hello.c -o libhello.so
