FROM ubuntu:22.04

# System packages
RUN set -x \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      dirmngr \
      g++ \
      gpg-agent \
      software-properties-common \
 && apt-get clean

# NVidia packages
RUN set -x \
 && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub \
 && add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
      cuda-cudart-dev-12-1 \
      cuda-nvcc-12-1 \
 && apt-get clean

# Put 'nvcc' in the PATH
ENV PATH="/usr/local/cuda-12.1/bin:${PATH}"
