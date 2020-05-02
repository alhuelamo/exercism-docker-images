FROM alhuelamo/exercism:base

RUN apt-get -qq update &&\
    apt-get -qq install build-essential cmake
