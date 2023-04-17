# Compile C code as a dynamic library
gcc -fPIC -shared guest.c -o libguest.so

# Weird
cp /home/opam/.opam/5.0/lib/ocaml/threads/threads.{cmxa,a}  /home/opam/.opam/5.0/lib/ocaml

# Compile OCaml code
ocamlfind ocamlopt -cclib -L. -cclib -lguest -linkpkg -package ctypes.foreign wrapper.mli wrapper.ml host.ml

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out

# Clean-up
rm a.out libguest.so {host,wrapper}.{o,cmi,cmx}
