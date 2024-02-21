# FROM ubuntu:jammy-20230308 as builder

# COPY CCS12.5.0.00007_linux-x64.tar.gz /opt/CCS12.5.0.00007_linux-x64.tar.gz

# RUN cd /opt && tar -xf CCS12.5.0.00007_linux-x64.tar.gz

###############################################################################
FROM ubuntu:jammy-20230308 as final


# COPY --from=builder /opt/CCS12.5.0.00007_linux-x64 /opt/CCS12.5.0.00007_linux-x64


ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL=C


RUN ls
RUN apt-get update



RUN apt install -y autoconf gperf make gcc g++ bison flex nano git


RUN cd /opt && git clone https://github.com/steveicarus/iverilog.git

RUN cd /opt/iverilog && ls && git status


RUN cd /opt/iverilog && \
sh autoconf.sh && \
./configure && \
make -j8


# RUN apt-get install -y make
# RUN apt-get install -y cmake
# RUN apt-get install -y curl wget nano


# RUN apt install -y ssh nano iproute2 xauth x11-apps

# RUN sed -i 's/#AddressFamily any/AddressFamily inet/g' /etc/ssh/sshd_config

# RUN mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys

# # reqs for CCS
# RUN apt install -y libc6-i386 libusb-0.1-4 libgconf-2-4 libncurses5 libpython2.7 libtinfo5
# RUN apt install -y libasound2 libatk1.0-0 libcairo2 libgdk3.0-cil libgtk-3-0 libusb-1.0-0 libxi6 libcanberra0 udev


WORKDIR /src
