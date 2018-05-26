#!/bin/bash

set -o errexit

cd old
./go.sh
cd ..

for SCRIPT in $(find . -name run.sh)
do
    TITLE=$(echo $SCRIPT | sed "s#\./\(.*\)/run\.sh#\1#; s#/#: #g")
    echo $TITLE
    echo $TITLE | sed "s#.#=#g"
    cd $(dirname $SCRIPT)
    ./run.sh
    cd - >/dev/null
    echo
done
