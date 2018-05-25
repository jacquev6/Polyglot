#!/bin/bash

set -o errexit

jbuilder build wrapper.bc.js

node host.js
