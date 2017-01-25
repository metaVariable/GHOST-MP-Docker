FROM ubuntu:14.04

MAINTAINER metaVariable <aoyama@bi.c.titech.ac.jp>

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
                        wget \
                        make \
                        g++ \
                        ssh \
                        openmpi-bin \
                        libopenmpi-dev \
                        libboost-dev

RUN wget -P /tmp http://www.bi.cs.titech.ac.jp/ghostmp/releases/ghostmp-1.3.3.tar.gz && \
    tar zxf /tmp/ghostmp-1.3.3.tar.gz  -C /opt && \
    rm /tmp/ghostmp-1.3.3.tar.gz 
RUN cd /opt/ghostmp-1.3.3/src && make

WORKDIR /opt/ghostmp-1.3.3/src
