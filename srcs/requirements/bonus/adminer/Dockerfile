FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y \
    curl \
    php7.4 \
    php7.4-cli \
    php7.4-sqlite \
    php7.4-curl \
    php7.4-mbstring \
    php7.4-json \
    php7.4-zip \
    php7.4-gd \
    php7.4-xml

RUN apt install apache2 php php-mysql -y

RUN mkdir -p /var/www/html/adminer && \
    curl -L https://www.adminer.org/latest.php -o /var/www/html/adminer/index.php

CMD ["apachectl", "-D", "FOREGROUND"]