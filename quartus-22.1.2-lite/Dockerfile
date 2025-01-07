
# Base layer has apt-get and such
###################################################################################################
###################################################################################################
###################################################################################################
FROM ubuntu:jammy-20240911.1 AS base


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils software-properties-common && \
apt-get upgrade -y && \
apt-get update && apt-get install -y --no-install-recommends \
\
make wget tar build-essential ssh \
nano ssh iproute2 zip unzip expect sudo locales less \
\
xauth x11-utils

#####################################
# Locale

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
RUN locale-gen en_US.UTF-8

RUN echo 'export LC_ALL=en_US.UTF-8' >> /root/.bashrc
RUN echo 'export LC_ALL=en_US.UTF-8' >> /root/.profile
#####################################
# SSH stuff

RUN echo "X11UseLocalhost no" >> /etc/ssh/sshd_config && \
mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys

# build layer gets Quartus, and installs it
###################################################################################################
###################################################################################################
###################################################################################################
FROM base AS build



RUN mkdir -p /root/builds/quartus-lite-22.1.2

ADD qinstall.sh /root/builds/quartus-lite-22.1.2

RUN chmod +x /root/builds/quartus-lite-22.1.2/qinstall.sh

# If you instead want to get the file locally, place it in the same directory as the Dockerfile
# then use this version instead of the wget version below
# COPY Quartus-lite-22.1std.2.922-linux.tar /root/builds/quartus-lite-22.1.2
# RUN cd /root/builds/quartus-lite-22.1.2 && tar -xf Quartus-lite-22.1std.2.922-linux.tar && \
# rm -rf Quartus-lite-22.1std.2.922-linux.tar

RUN cd /root/builds/quartus-lite-22.1.2 && \
wget -nv https://downloads.intel.com/akdlm/software/acdsinst/22.1std.2/922/ib_tar/Quartus-lite-22.1std.2.922-linux.tar && \
tar -xf Quartus-lite-22.1std.2.922-linux.tar && rm -rf Quartus-lite-22.1std.2.922-linux.tar

RUN cd /root/builds/quartus-lite-22.1.2/ && ./qinstall.sh

# final layer starts from base, which skips all the side effects of the quartus download
# just takes the installed Quartus directory
###################################################################################################
###################################################################################################
###################################################################################################
FROM base AS final

COPY --from=build /root/intelFPGA_lite /root/intelFPGA_lite
