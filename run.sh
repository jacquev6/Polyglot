#!/bin/bash

set -o errexit

cd "$(dirname "${BASH_SOURCE[0]}")"

verbose=false
roots=()
while [[ "$#" -gt 0 ]]
do
  case $1 in
    --verbose|-v)
      verbose=true;;
    *)
      if [ -d $1 ]
      then
        roots+=($1)
      else
        echo "Unknown parameter passed: $1"
        exit 1
      fi;;
  esac
  shift
done

if [ ${#roots[@]} -eq 0 ]
then
  roots+=(.)
fi

for example in $(find ${roots[@]} -name build-and-run.sh | sort -u)
do
  example=$(dirname $example)
  example=${example#./}
  echo $example
  echo $example | sed s/./=/g

  docker_path=$example
  while ! [ -f $docker_path/Dockerfile ]
  do
    if [ $docker_path == "." ]
    then
      echo No Dockerfile found
      exit 1
    fi
    docker_path=$(dirname $docker_path)
  done

  if $verbose
  then
    echo "Using Dockerfile at $docker_path"
    docker build $docker_path
  fi

  docker run \
    --rm \
    --volume $PWD:/polyglot \
    --workdir /polyglot/$example \
    $(docker build $docker_path --quiet) \
    bash -e $(if $verbose; then echo -x; fi) build-and-run.sh

  echo
done

echo "=========="
echo "=== OK ==="
echo "=========="

find examples -type f -name host.* | xargs echo "Bad host files:"
find examples -type f -name guest.* | xargs echo "Bad guest files:"
