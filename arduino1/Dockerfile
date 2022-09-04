FROM ubuntu:jammy-20220815

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install -y \
python3 arduino-mk build-essential nano \
\
curl wget nano \
autoconf automake git \
\
&& rm -rf /var/lib/apt/lists/*

WORKDIR /src
