FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      npm \
      python3-pip \
 && apt-get clean

RUN pip3 install \
      javascripthon
