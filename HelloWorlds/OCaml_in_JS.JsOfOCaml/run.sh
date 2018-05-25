#!/bin/bash

set -o errexit

jbuilder build hello.bc.js

node _build/default/hello.bc.js
