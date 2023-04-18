FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      gcc \
      pkg-config \
      python3-dev \
      python3-pip \
      python3-setuptools \
 && apt-get clean
