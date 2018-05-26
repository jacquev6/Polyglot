#!/bin/sh

set -o errexit

mkdir -p _build
gcc -fPIC -shared guest.c -o _build/libguest.so

ocamlbuild -no-links -use-ocamlfind -pkg ctypes.foreign -lflags -cclib,-L.,-cclib,-lguest host.native

LD_LIBRARY_PATH=_build:$LD_LIBRARY_PATH _build/host.native
