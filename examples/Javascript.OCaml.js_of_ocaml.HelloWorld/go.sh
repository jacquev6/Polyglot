#!/bin/sh

set -o errexit

ocamlbuild -use-ocamlfind -package js_of_ocaml -syntax camlp4o -package js_of_ocaml.syntax -cflags -I,../../../guests/OCaml/_build -lflags -I,../../../guests/OCaml/_build -lib hello hello_js.byte

js_of_ocaml hello_js.byte

echo "Open $(realpath index.html) in a browser"