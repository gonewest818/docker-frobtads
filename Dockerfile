FROM ubuntu:14.04

RUN apt-get -y update; \
    apt-get -y install curl \
                       g++ \
                       gawk \
                       libcurl4-openssl-dev \
                       libncurses5-dev \
                       make \
                       uuid-runtime

RUN curl -O http://www.tads.org/frobtads/frobtads-1.2.3.tar.gz; \
    tar xfz frobtads-1.2.3.tar.gz; \
    cd frobtads-1.2.3; \
    ./configure; \
    make install; \
    rm ../frobtads-1.2.3.tar.gz

ADD t3create /usr/local/bin/t3create

