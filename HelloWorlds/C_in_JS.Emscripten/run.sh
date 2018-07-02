#!/bin/bash

set -o errexit

emcc hello.c -o hello.js

node hello.js
