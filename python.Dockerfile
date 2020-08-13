FROM python:3.8-buster

WORKDIR /root

COPY ./install_exercism.sh /root

RUN sh install_exercism.sh &&\
    rm install_exercism.sh

CMD bash
