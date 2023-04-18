FROM ubuntu:22.04

RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
    npm \
    python3-pip \
 && apt-get clean

RUN pip3 install \
      transcrypt

RUN npm install --global \
      rollup@2.79.1
# @todo Upgrade rollup to latest 3.x version
