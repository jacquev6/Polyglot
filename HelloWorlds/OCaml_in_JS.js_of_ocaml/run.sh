#!/bin/bash

set -o errexit

ocamlfind ocamlc ../hello.ml -o hello.byte

js_of_ocaml hello.byte -o hello.js

node hello.js
