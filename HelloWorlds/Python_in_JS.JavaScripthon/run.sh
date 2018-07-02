#!/bin/bash

set -o errexit

pj hello.py -o hello.tmp.js

rm *.map

grep -v -e "print_function" hello.tmp.js >hello.js

node hello.js
