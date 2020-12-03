gcc -fPIC -shared guest.c -o libguest.so

ocamlfind ocamlopt wrapper_stubs.c -cclib -L. -cclib -lguest wrapper.mli wrapper.ml host.ml

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out

rm a.out libguest.so {host,wrapper}.{cmi,cmx,o} wrapper_stubs.o
