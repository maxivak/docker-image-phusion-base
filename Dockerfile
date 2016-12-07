FROM phusion/baseimage:0.9.19
MAINTAINER Max Ivak <maxivak@gmail.com>


#
ENV TERM xterm
#RUN export TERM=xterm

# Add packages as needed
RUN apt-get update

RUN apt-get install -y  \
            curl \
            iproute2 \
            telnet \
           vim \
           nano




### ssh
#RUN rm -f /etc/service/sshd/down
#RUN rm -f /etc/service/sshd/down && /etc/my_init.d/00_regen_ssh_host_keys.sh > /dev/nul 2>&1

###
RUN    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*
