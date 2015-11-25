#!/usr/bin/env python3

import ctypes

hello = ctypes.CDLL("./libhello.so")

print("HOST (Python 3) says 'Hello Guest!'")
hello.hello()
