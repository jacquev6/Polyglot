# Translate to JavaScript
pj main.py >log.txt 2>&1 || (cat log.txt; exit 1)

# Run
node main.js

# Clean-up
rm log.txt main.js.map main.js
