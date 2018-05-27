#!/bin/bash

set -o errexit

ocamlfind ocamlc -linkpkg -package js_of_ocaml-ppx -package js_of_ocaml -I .. ../guest.cmo wrapper.ml -o wrapper.byte

js_of_ocaml wrapper.byte -o wrapper.js

node host.js
