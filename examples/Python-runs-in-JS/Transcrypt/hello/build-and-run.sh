# Translate to JavaScript
transcrypt --build --map --nomin --parent .none main.py >log.txt 2>&1

cd __target__

# Bundle for Node.js
rollup main.js --o main.bundle.js --f cjs >>log.txt 2>&1

# Run
node main.bundle.js

cd ..

# Clean-up
rm log.txt
rm -r __target__
