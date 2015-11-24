#!/bin/sh

set -o errexit

ocamlbuild -use-ocamlfind -package js_of_ocaml -syntax camlp4o -package js_of_ocaml.syntax hello.byte

js_of_ocaml hello.byte

echo "Open $(realpath index.html) in a browser"