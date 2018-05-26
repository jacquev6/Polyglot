import ctypes

hello = ctypes.CDLL("./libguest.so")

hello.hello()
