#!/bin/bash

set -o errexit

transcrypt --nomin --parent module.exports guest.py >/dev/null 2>&1

NODE_PATH=.:$NODE_PATH node host.js
