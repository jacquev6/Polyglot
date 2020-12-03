#!/bin/bash

set -o errexit
cd "$(dirname "${BASH_SOURCE[0]}")/.."

find examples -type l -delete

for flavor in $(find shared/X-calls-Y -type d -mindepth 1)
do
  flavor=$(basename $flavor)

  for d in examples/*-calls-C/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.h .
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.c .
    cd - >/dev/null
  done

  for d in examples/C++-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.cpp .
    ln -s ../../../../shared/X-calls-Y/$flavor/wrapper.hpp .
    cd - >/dev/null
  done
done

for flavor in $(find shared/X-runs-in-E -type d -mindepth 1)
do
  flavor=$(basename $flavor)

  for d in examples/OCaml-runs-in-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-runs-in-E/$flavor/main.ml .
    cd - >/dev/null
  done

  for d in examples/Python-runs-in-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-runs-in-E/$flavor/main.py .
    cd - >/dev/null
  done
done
