FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      ca-certificates \
      lbzip2 \
      python3 \
      wget \
      xz-utils \
 && apt-get clean

# @todo Upgrade to emsdk 3
RUN set -x \
 && wget https://github.com/emscripten-core/emsdk/archive/2.0.9.tar.gz \
 && tar xzf 2.0.9.tar.gz \
 && rm 2.0.9.tar.gz \
 && cd emsdk-2.0.9 \
 && ./emsdk install latest \
 && ./emsdk activate latest
