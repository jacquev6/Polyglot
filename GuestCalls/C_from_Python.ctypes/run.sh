#!/bin/sh

set -o errexit

PYTHONPATH=.:$PYTHONPATH python2 ../host.py

PYTHONPATH=.:$PYTHONPATH python3 ../host.py
