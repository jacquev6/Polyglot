#!/bin/bash

set -o errexit

pj hello.py -o hello.tmp.js >/dev/null 2>&1

rm *.map

grep -v -e "print_function" hello.tmp.js >hello.js

node hello.js
