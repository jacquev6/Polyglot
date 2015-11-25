#!/bin/sh

for make in */make.sh
do
    d=$(dirname $make)
    cd $d
    ./make.sh
    cd ..
done
