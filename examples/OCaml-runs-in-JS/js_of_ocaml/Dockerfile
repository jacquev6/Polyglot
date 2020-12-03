# @todo Use ubuntu:20.04 (we need OCaml and Node.js, so we should not use a base image tailored for one of them)
FROM ocaml/opam:debian

RUN opam install js_of_ocaml

RUN set -x \
 && sudo apt-get update \
 && sudo apt-get install --yes nodejs
