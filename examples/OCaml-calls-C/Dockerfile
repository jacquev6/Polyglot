FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      ca-certificates \
      libffi-dev \
      m4 \
      opam \
      pkg-config \
 && apt-get clean

RUN opam init --auto-setup --disable-sandboxing

RUN opam install --yes \
      ctypes \
      ctypes-foreign \
      ocamlfind
