# docker-gitlab-ci-runner-php7

FROM bobey/docker-gitlab-ci-runner-php
MAINTAINER  Olivier Balais "obalais@gmail.com"

ENV PHP_VERSION 7.0

RUN DEBIAN_FRONTEND=noninteractive apt-get remove -y --purge php*

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    php7.0-cli php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-mbstring php7.0-xml php7.0-zip

RUN composer global require hirak/prestissimo
