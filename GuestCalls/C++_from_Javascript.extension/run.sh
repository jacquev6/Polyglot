#!/bin/bash

set -o errexit

# @todo Build libguest.so beforehand (currently it's built by node-gyp with wrapper.cpp):
# g++ -fPIC -shared guest.cpp -o libguest.so

# @todo Demonstrate low-level build commands
node-gyp configure
node-gyp build

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH NODE_PATH=build/Release:$NODE_PATH node host.js
