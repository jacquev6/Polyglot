#!/bin/sh

set -o errexit

ocamlbuild -use-ocamlfind -pkg ctypes.foreign -lflags -cclib,-L../../../guests/C,-cclib,-lhello main.native

LD_LIBRARY_PATH=../../guests/C:$LD_LIBRARY_PATH ./main.native
