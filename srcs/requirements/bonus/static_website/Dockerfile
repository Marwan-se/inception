FROM debian:bullseye

RUN apt-get update && apt install -y nginx

RUN mkdir -p /var/www/html

COPY ./tools/index.html /var/www/html/index.html


COPY conf/nginx.conf /etc/nginx/conf.d/test.conf

EXPOSE 1337

CMD ["nginx", "-g", "daemon off;"]