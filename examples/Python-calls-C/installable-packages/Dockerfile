FROM ubuntu:20.04

# @todo Upgrade:
# - use Ubuntu 22.04 (or more recent)
# - try to remove the /etc/localtime symlink
# - clean-up after 'apt install'
# - apply above changes to all examples

RUN set -x \
 && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
 && apt-get update \
 && apt-get install --yes gcc pkg-config python3-dev python3-pip python3-setuptools
