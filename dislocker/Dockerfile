
###############################################################################
FROM ubuntu:22.04



ENV DEBIAN_FRONTEND=noninteractive
# ENV LC_ALL=C


# RUN ls
RUN apt-get update


RUN apt install -y make nano git ssh iproute2 cmake pkg-config sudo

RUN apt install -y \
git \
build-essential \
cmake \
pkg-config \
libfuse3-dev \
libssl-dev \
curl


RUN cd /tmp && git clone https://github.com/Mbed-TLS/mbedtls.git


RUN cd /tmp/mbedtls && git checkout v3.6.0

RUN cd /tmp/mbedtls && git submodule update --init --recursive

RUN cd /tmp/mbedtls && mkdir build

# && cd build

RUN cd /tmp/mbedtls/build && cmake -DCMAKE_BUILD_TYPE=Release \
      -DENABLE_TESTING=OFF \
      -DENABLE_PROGRAMS=OFF \
      -DCMAKE_INSTALL_PREFIX=/opt/mbedtls \
      ..

RUN cd /tmp/mbedtls/build && make -j$(nproc) && make install



RUN cd /tmp && git clone https://github.com/Aorimn/dislocker.git

# RUN mkdir -p /tmp/dislocker

# cd /build
# mkdir -p build && cd build

RUN cd /tmp/dislocker && cmake \
  -DCMAKE_PREFIX_PATH=/opt/mbedtls \
  -DCMAKE_BUILD_TYPE=Release \
  .

RUN cd /tmp/dislocker && make -j$(nproc)