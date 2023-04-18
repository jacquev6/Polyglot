# @todo Use Ubuntu
FROM ocaml/opam:debian

USER root

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      m4 \
      pkg-config \
      libffi-dev \
 && apt-get clean

USER opam

RUN opam install \
      ctypes \
      ctypes-foreign \
      ocamlfind
