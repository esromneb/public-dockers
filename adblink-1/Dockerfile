FROM ubuntu:jammy-20230308 AS builder

RUN apt-get update \
&& apt-get install -y \
wget unzip \
ssh nano iproute2 xauth x11-apps libx11-xcb1

RUN sed -i 's/#AddressFamily any/AddressFamily inet/g' /etc/ssh/sshd_config
RUN mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys && chmod 600 -R /root/.ssh

WORKDIR /root

RUN wget -nv http://www.jocala.com/downloads/adblink.62.zip

RUN unzip adblink.62.zip

