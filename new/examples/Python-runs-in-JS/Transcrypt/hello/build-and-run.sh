# Translate to JavaScript
transcrypt --build --map --nomin --parent .none main.py

cd __target__

# Bundle for Node.js
rollup main.js --o main.bundle.js --f cjs

# Run
node main.bundle.js

cd ..

# Clean-up
rm -r __target__
