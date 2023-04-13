FROM ubuntu:jammy-20230308


ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL=C


RUN apt-get update

# simple for low bandwidth for now
RUN apt-get install -y \
git

RUN apt-get install -y build-essential

RUN apt-get install -y make
RUN apt-get install -y cmake
RUN apt-get install -y curl wget nano


RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN /bin/bash -c "source /root/.nvm/nvm.sh && nvm i 14"


# https://github.com/puppeteer/puppeteer/issues/7740

RUN apt-get install -y chromium-browser

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# RUN apt-get install -y autoconf automake

# probably what i want
# RUN apt-get install -y \
# git make cmake \
# build-essential \
# curl wget nano \
# autoconf automake \
# zip unzip pigz \
# ssh \
# iproute2 \
# && true


# \
# && \
# apt-get autoremove -y && \
# apt-get clean

WORKDIR /src

# RUN cd /opt && git clone https://github.com/wireshark/wireshark.git
# RUN cd /opt/wireshark && git checkout master-3.2


# RUN cd /opt/wireshark/ && mkdir build && cd build && cmake ..

# RUN cd /opt/wireshark/build && make -j 10


# ssh works with
#        X11Forwarding yes
#        #X11DisplayOffset 10
#        X11UseLocalhost no
