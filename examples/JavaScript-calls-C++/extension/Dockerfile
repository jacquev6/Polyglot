FROM ubuntu:22.04

RUN set -x \
 && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
 && apt-get update \
 && apt-get install --yes npm \
 && npm install -g node-gyp
