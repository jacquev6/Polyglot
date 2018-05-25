#!/bin/sh

cd guests
./make.sh
cd ..

for go in examples/*/go.sh
do
    d=$(dirname "$go")
    header=$(echo $d | sed "s#^examples/\(.*\)\.\(.*\)\.\(.*\)\.\(.*\)#\1 calls \2 using \3 (\4)#g")
    echo $header
    echo $header | sed "s/./-/g"
    cd "$d"
    if ./go.sh
    then
        echo "OK"
    else
        echo "=======================> ERROR"
        exit 1
    fi
    echo
    cd ../..
done
