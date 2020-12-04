# Build C code
gcc -fPIC -shared guest.c -o libguest.so

# Build OCaml code and C extension
ocamlfind ocamlopt wrapper_stubs.c -cclib -L. -cclib -lguest wrapper.mli wrapper.ml host.ml

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out

# Clean-up
rm a.out libguest.so {host,wrapper}.{cmi,cmx,o} wrapper_stubs.o
