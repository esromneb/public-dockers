FROM ubuntu:jammy-20220531

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL=C



RUN apt-get update && \
apt-get install -y \
git make cmake \
build-essential \
curl wget nano \
autoconf automake \
zip unzip \
setserial \
ssh \
iproute2 \
locales \
x11-apps \
\
\
libgtk2.0-dev libpcap-dev bison flex make automake libtool python3 perl libgcrypt-dev \
libnl-3-dev \
qttools5-dev \
qttools5-dev-tools \
libqt5svg5-dev \
qtmultimedia5-dev \
qtbase5-dev \
qtchooser \
qt5-qmake \
qtbase5-dev-tools \
libc-ares-dev libkrb5-dev libqt5svg5-dev lynx libsmi2-dev \
portaudio19-dev asciidoc libsbc-dev libgeoip-dev \
qtmultimedia5-dev liblua5.2-dev libnl-cli-3-dev \
libparse-yapp-perl \
libcap-dev \
liblz4-dev libsnappy-dev libspandsp-dev libxml2-dev \
\
\
&& \
apt-get autoremove -y && \
apt-get clean

RUN cd /opt && git clone https://github.com/wireshark/wireshark.git
RUN cd /opt/wireshark && git checkout master-3.2


RUN cd /opt/wireshark/ && mkdir build && cd build && cmake ..

RUN cd /opt/wireshark/build && make -j 10


# ssh works with
#        X11Forwarding yes
#        #X11DisplayOffset 10
#        X11UseLocalhost no
