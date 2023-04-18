FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      g++ \
      make \
      npm \
 && apt-get clean

RUN npm install -g \
      node-gyp
