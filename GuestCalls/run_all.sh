#!/bin/bash

set -o errexit

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
