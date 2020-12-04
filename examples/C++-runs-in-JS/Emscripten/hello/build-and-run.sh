# Add Emscripten to the PATH
source /emsdk-2.0.9/emsdk_env.sh >log.txt 2>&1

# Compile to JavaScript
em++ main.cpp -o main.js >log.txt 2>&1

# Run
node main.js

# Clean-up
rm log.txt main.js main.wasm
