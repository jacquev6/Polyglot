#!/bin/bash

set -o errexit

ocamlc hello.ml -o hello.byte

js_of_ocaml hello.byte -o hello.js

node hello.js
