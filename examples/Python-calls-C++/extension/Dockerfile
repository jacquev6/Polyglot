FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      g++ \
      pkg-config \
      python3-dev \
 && apt-get clean
