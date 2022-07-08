FROM ubuntu:jammy-20220531

ENV DEBIAN_FRONTEND noninteractive
ENV DISPLAY :0
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

RUN cd /opt && git clone https://github.com/wireshark/wireshark.git && cd wireshark && git checkout master-2.6
RUN cd /opt/wireshark && git checkout master-3.2


	# qttools5-dev \
	# qttools5-dev-tools \
	# libqt5svg5-dev \
	# qtmultimedia5-dev \
	# qtbase5-dev \
	# qtchooser \
	# qt5-qmake \
	# qtbase5-dev-tools \

# qttools5-dev \
# qttools5-dev-tools \
# libgtk-3-dev \
# qt5-default \

# RUN apt-get install -y \



# RUN mkdir -p /opt/wireshark/tools && cd /opt/wireshark/tools && wget https://raw.githubusercontent.com/wireshark/wireshark/master/tools/debian-setup.sh

# RUN cat /opt/wireshark/tools/debian-setup.sh

# RUN cd /opt/wireshark && tools/debian-setup.sh --install-optional --install-deb-deps python3-pip -y

# RUN cd /opt/wireshark && git checkout 79afe8e && git submodule update --init --recursive

# RUN cd /opt/wireshark && ./autogen.sh

RUN cd /opt/wireshark/ && mkdir build && cd build && cmake ..

RUN cd /opt/wireshark/build && make -j 10
# RUN cd /opt/wireshark/build && make


# ssh works with
#        X11Forwarding yes
#        #X11DisplayOffset 10
#        X11UseLocalhost no
