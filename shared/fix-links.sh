#!/bin/bash

set -o errexit
cd "$(dirname "${BASH_SOURCE[0]}")/.."

find examples -type l -delete

shopt -s nullglob

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

  for d in examples/*-calls-C++/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.hpp .
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.cpp .
    cd - >/dev/null
  done

  for d in examples/*-calls-OCaml/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.mli .
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.ml .
    cd - >/dev/null
  done

  for d in examples/*-calls-Python/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.py .
    cd - >/dev/null
  done

  for d in examples/*-calls-Fortran/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/guest.f90 .
    cd - >/dev/null
  done

  for d in examples/C++-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.cpp .
    ln -s ../../../../shared/X-calls-Y/$flavor/wrapper.hpp .
    cd - >/dev/null
  done

  for d in examples/C-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.c .
    ln -s ../../../../shared/X-calls-Y/$flavor/wrapper.h .
    cd - >/dev/null
  done

  for d in examples/Fortran-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.f90 .
    cd - >/dev/null
  done

  for d in examples/Python-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.py .
    cd - >/dev/null
  done

  for d in examples/OCaml-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.ml .
    ln -s ../../../../shared/X-calls-Y/$flavor/wrapper.mli .
    cd - >/dev/null
  done

  for d in examples/JavaScript-calls-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-calls-Y/$flavor/host.js .
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

  for d in examples/C-runs-in-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-runs-in-E/$flavor/main.c .
    cd - >/dev/null
  done

  for d in examples/C++-runs-in-*/*/$flavor
  do
    cd $d
    ln -s ../../../../shared/X-runs-in-E/$flavor/main.cpp .
    cd - >/dev/null
  done
done
