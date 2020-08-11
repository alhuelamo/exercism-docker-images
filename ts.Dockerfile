FROM alhuelamo/exercism:base

RUN apt-get -qq update &&\
    apt-get install -y curl gnupg &&\
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
    apt-get -qq update &&\
    apt-get -qq install yarn
