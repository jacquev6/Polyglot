#!/bin/bash

set -o errexit

ocamlfind ocamlc -c guest.mli -o guest.cmi
ocamlfind ocamlc -c guest.ml -o guest.cmo

ocamlfind ocamlc -linkpkg -package js_of_ocaml-ppx -package js_of_ocaml guest.cmo wrapper.ml -o wrapper.byte

js_of_ocaml wrapper.byte -o wrapper.js

NODE_PATH=.:$NODE_PATH node host.js
