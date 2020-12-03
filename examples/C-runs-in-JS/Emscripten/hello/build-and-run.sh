# Add Emscripten to the PATH
source /emsdk-2.0.9/emsdk_env.sh

# Compile to JavaScript
emcc main.c -o main.js

# Run
node main.js

# Clean-up
rm main.js main.wasm
