import ctypes
import sys

libguest = ctypes.CDLL("./libguest.so")


def wrapper(host):
    host = host.encode("utf8")
    greetings = ctypes.create_string_buffer(100)
    libguest.guest(greetings, host)
    greetings = greetings.value
    greetings = greetings.decode("utf8")
    return greetings
