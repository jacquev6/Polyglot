#!/bin/bash

set -o errexit

transcrypt --nomin --parent .none hello.py >/dev/null 2>&1

node __javascript__/hello.js
