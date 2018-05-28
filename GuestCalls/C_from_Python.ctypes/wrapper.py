import ctypes
import sys

libguest = ctypes.CDLL("./libguest.so")

def greet(guest):
    if sys.hexversion >= 0x03000000:
        guest = guest.encode("utf8")
    greetings = ctypes.create_string_buffer(100)
    libguest.greet(greetings, guest)
    greetings = greetings.value
    if sys.hexversion >= 0x03000000:
        greetings = greetings.decode("utf8")
    return greetings
