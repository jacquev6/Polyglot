# Translate to JavaScript
transcrypt --nomin --parent module.exports guest.py >log.txt 2>&1

# Bundle for Node.js
cd __target__
rollup guest.js --o guest.bundle.js --f cjs >>log.txt 2>&1
cd ..

# Run
NODE_PATH=.:$NODE_PATH node host.js

# Clean-up
rm log.txt
rm -r __target__
