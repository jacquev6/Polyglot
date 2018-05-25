#!/usr/bin/env python3

import ctypes

hello = ctypes.CDLL("../../guests/C/libhello.so")

print("Host (Python 3) says 'Hello Guest!'")
hello.hello()
