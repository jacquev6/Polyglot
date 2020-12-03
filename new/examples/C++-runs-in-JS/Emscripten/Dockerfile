FROM ubuntu:20.04

RUN set -x \
 && apt-get update \
 && apt-get install --yes wget python3 \
 && wget https://github.com/emscripten-core/emsdk/archive/2.0.9.tar.gz \
 && tar xzf 2.0.9.tar.gz \
 && rm 2.0.9.tar.gz \
 && cd emsdk-2.0.9 \
 && ./emsdk install latest \
 && ./emsdk activate latest
