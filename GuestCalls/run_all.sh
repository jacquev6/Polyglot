#!/bin/bash

set -o errexit

# @todo Put these back into each example? (Maybe even ln -s hosts and guests in each example, to make them more self-contained?)
gcc -fPIC -shared guest.c -o libguest_c.so
g++ -fPIC -shared guest.cpp -o libguest_cpp.so
ocamlfind ocamlc -c guest.mli -o guest.cmi
ocamlfind ocamlc -c guest.ml -o guest.cmo

for SCRIPT in */run.sh
do
    DIRNAME=$(dirname $SCRIPT)
    echo $DIRNAME
    echo $DIRNAME | sed "s#.#-#g"
    cd $DIRNAME
    ./run.sh
    cd - >/dev/null
    echo
done
