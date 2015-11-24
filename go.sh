#!/bin/sh

for go in $(find . -mindepth 2 -name go.sh)
do
    d=$(dirname $go)
    echo $d
    echo $d | sed "s/./-/g"
    cd $d
    ./go.sh
    cd - >/dev/null
    echo
done
