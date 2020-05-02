FROM ubuntu:18.04

WORKDIR /root

COPY ./install_exercism.sh /root

RUN /root/install_exercism.sh &&\
    rm install_exercism.sh
