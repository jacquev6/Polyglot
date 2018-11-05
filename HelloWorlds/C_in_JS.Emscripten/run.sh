#!/bin/bash

set -o errexit

# You probably need to source /path/to/emsdk/emsdk_env.sh to get emcc in your $PATH

emcc hello.c -o hello.js

node hello.js
