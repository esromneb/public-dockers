
# Base layer has apt-get and such
###################################################################################################
###################################################################################################
###################################################################################################
FROM ubuntu:jammy-20250819 AS base


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils software-properties-common && \
apt-get upgrade -y && \
apt-get update && apt-get install -y --no-install-recommends \
\
make wget tar build-essential ssh \
nano ssh iproute2 zip unzip expect sudo locales less \
\
xauth x11-utils \
\
libc6-i386

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
mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys && chmod 600 -R /root/.ssh


###################################################################################################
###################################################################################################
###################################################################################################
# Fetch old libs with this layer
FROM ubuntu:xenial AS libpng12
RUN apt-get update && apt-get install -y --no-install-recommends libpng12-0 && \
    rm -rf /var/lib/apt/lists/*

###################################################################################################
###################################################################################################
###################################################################################################
# build layer gets Quartus, and installs it
FROM base AS build

ARG QBUILDDIR=/root/builds/quartus
ARG QURL=https://downloads.intel.com/akdlm/software/acdsinst/13.0sp1/232/ib_tar/Quartus-web-13.0.1.232-linux.tar
ARG QTAR=Quartus-web-13.0.1.232-linux.tar


RUN mkdir -p ${QBUILDDIR}

RUN cd ${QBUILDDIR} && \
wget -nv ${QURL} && \
tar -xf ${QTAR} && rm -rf ${QTAR}


ADD qinstall.sh ${QBUILDDIR}
RUN chmod +x ${QBUILDDIR}/qinstall.sh
RUN cd ${QBUILDDIR}/ && ./qinstall.sh

# final layer starts from base, which skips all the side effects of the quartus download
# just takes the installed Quartus directory
###################################################################################################
###################################################################################################
###################################################################################################
FROM base AS final

# Copy libpng12 from xenial stage
COPY --from=libpng12 /usr/lib/x86_64-linux-gnu/libpng12.so.0 /usr/lib/x86_64-linux-gnu/

COPY --from=build /root/altera /root/altera


