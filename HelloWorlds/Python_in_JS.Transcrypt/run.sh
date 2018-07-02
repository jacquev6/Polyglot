#!/bin/bash

set -o errexit

transcrypt --nomin --parent .none hello.py

node __javascript__/hello.js
