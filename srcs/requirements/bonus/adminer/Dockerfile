FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y \
    curl \
    php7.4 

RUN apt install apache2 php php-mysql -y

RUN mkdir -p /var/www/html/adminer && \
    curl -L https://www.adminer.org/latest.php -o /var/www/html/adminer/index.php

    #####################
CMD ["apachectl", "-D", "FOREGROUND"]