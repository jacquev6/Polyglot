# @todo Use Ubuntu (we need OCaml and Node.js, so we should not use a base image tailored for one of them)
FROM ocaml/opam:debian

USER root

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      nodejs \
 && apt-get clean

USER opam

RUN opam install \
      js_of_ocaml
