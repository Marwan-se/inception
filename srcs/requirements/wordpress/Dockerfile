FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && \
    apt install -y \
        curl \
        wget \
        php-fpm \
        php-mysql \
        php-curl \
        php-zip 

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp


WORKDIR /var/www/html

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/script.sh  /tmp/script.sh

RUN mkdir /run/php


CMD ["sh" , "/tmp/script.sh"]

