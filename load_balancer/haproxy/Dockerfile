FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y -q \
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

#copy the config file to the container
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
#COPY 50-default.conf /etc/rsyslog.d/50-default.conf
#COPY rsyslog.conf /etc/rsyslog.conf

#entry point
ENTRYPOINT service haproxy restart && bash

