FROM ubuntu:20.04

RUN set -x \
 && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
 && apt-get update \
 && apt-get install --yes python3-pip npm \
 && pip3 install javascripthon transcrypt \
 && npm install --global rollup
