FROM ocaml/opam:debian

RUN set -x \
 && sudo apt-get update \
 && sudo apt-get install --yes m4 pkg-config libffi-dev \
 && opam install ocamlfind ctypes ctypes-foreign
