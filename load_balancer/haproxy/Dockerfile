FROM ubuntu:xenial

ENV IFIN input
ENV IFOUT output


RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y -q \
        iproute \
        net-tools \
        inetutils-ping \
        haproxy \
        python \
        python-yaml \
        curl \
        vim \
        python3 \
        python3-pip
RUN apt-get install -y software-properties-common
RUN apt-get install -y rsyslog
RUN apt-get update
RUN apt-get install -y haproxy

ADD start.sh start.sh
RUN chmod +x start.sh
ADD stop.sh stop.sh
RUN chmod +x stop.sh
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

#copy the config file to the container
#COPY haproxy.cfg /etc/haproxy/haproxy.cfg
#COPY 50-default.conf /etc/rsyslog.d/50-default.conf
#COPY rsyslog.conf /etc/rsyslog.conf

WORKDIR /

RUN mkdir /tngbench_share
#entry point
#ENTRYPOINT service haproxy restart && bash
CMD /bin/bash
#ENTRYPOINT ./start.sh && bash
