#!/bin/sh

for go in */go.sh
do
    d=$(dirname $go)
    echo $d
    echo $d | sed "s/./-/g"
    cd $d
    ./go.sh
    cd ..
    echo
done
