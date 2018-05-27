#!/bin/sh

set -o errexit

ocamlfind ocamlopt -cclib -L.. -cclib -lguest_c -linkpkg -package ctypes.foreign wrapper.ml ../host.ml -o host.exe

LD_LIBRARY_PATH=..:$LD_LIBRARY_PATH ./host.exe
