# Compile OCaml as bytecode
ocamlc main.ml -o main.byte

# Translate to JavaScript
js_of_ocaml main.byte

# Run
node main.js

# Clean-up
rm main.byte main.cmi main.cmo main.js
