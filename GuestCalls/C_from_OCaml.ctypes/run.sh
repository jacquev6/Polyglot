#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

ocamlfind ocamlopt -cclib -L. -cclib -lguest -linkpkg -package ctypes.foreign wrapper.ml host.ml -o host.exe

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./host.exe
