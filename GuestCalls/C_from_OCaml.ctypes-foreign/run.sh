#!/bin/sh

set -o errexit


ocamlbuild -no-links -use-ocamlfind -pkg ctypes.foreign -lflags -cclib,-L../..,-cclib,-lguest_c host.native

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH _build/host.native
