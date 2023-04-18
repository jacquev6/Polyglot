# Compile C code as a dynamic library
gcc -fPIC -shared guest.c -o libguest.so

# Activate OPAM
eval $(opam env)

# Weird
cp /root/.opam/default/lib/ocaml/threads/threads.{cmxa,a} /root/.opam/default/lib/ocaml/

# Compile OCaml code
ocamlfind ocamlopt -cclib -L. -cclib -lguest -linkpkg -package ctypes.foreign wrapper.mli wrapper.ml host.ml

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out

# Clean-up
rm a.out libguest.so {host,wrapper}.{o,cmi,cmx}
