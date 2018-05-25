#!/bin/bash

set -o errexit

em++ hello.cpp -o hello.js
node hello.js
