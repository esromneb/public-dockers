FROM gnuoctave/octave:7.3.0

ENV DEBIAN_FRONTEND noninteractive

RUN apt update

RUN apt install -y ssh nano iproute2 xauth x11-apps

RUN mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys

RUN sed -i 's/#AddressFamily any/AddressFamily inet/g' /etc/ssh/sshd_config

WORKDIR /src
