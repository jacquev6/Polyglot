# Build extension
# @todo Demonstrate low-level build commands
node-gyp configure >log.txt 2>&1
node-gyp build >>log.txt 2>&1

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH NODE_PATH=build/Release:$NODE_PATH node host.js

# Clean-up
rm log.txt
rm -r build
