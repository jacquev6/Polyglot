#!/bin/sh

set -o errexit

gcc -fPIC -shared guest.c -o libguest.so

ocamlfind ocamlopt wrapper_stubs.c -cclib -L. -cclib -lguest wrapper.ml host.ml -o host.exe

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./host.exe
