#!/bin/sh

set -o errexit

rm -rf build_c
mkdir build_c
gcc -shared -fPIC hello.c -o build_c/libhello.so

ocamlbuild -build-dir build_ocaml -use-ocamlfind -pkg core -tag thread -pkg ctypes.foreign -lflags -cclib,-L../build_c,-cclib,-lhello main.native

LD_LIBRARY_PATH=build_c:$LD_LIBRARY_PATH build_ocaml/main.native
