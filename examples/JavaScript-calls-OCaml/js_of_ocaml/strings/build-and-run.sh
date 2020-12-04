# Build OCaml code as bytecode
ocamlfind ocamlc -linkpkg -package js_of_ocaml-ppx -package js_of_ocaml guest.mli guest.ml wrapper.ml -o wrapper.byte

# Translate to JavaScript
js_of_ocaml wrapper.byte -o wrapper.js

# Run
NODE_PATH=.:$NODE_PATH node host.js

# Clean-up
rm wrapper.{cmi,cmo,byte,js} guest.{cmi,cmo}
