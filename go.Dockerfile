FROM golang:1.14-buster

WORKDIR /root

COPY ./install_exercism.sh /root

RUN /root/install_exercism.sh &&\
    rm install_exercism.sh

