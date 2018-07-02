#!/bin/bash

set -o errexit

transcrypt --nomin --parent module.exports guest.py

NODE_PATH=.:$NODE_PATH node host.js
