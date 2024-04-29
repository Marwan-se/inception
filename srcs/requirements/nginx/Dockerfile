FROM debian:bullseye

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install nginx -y
# Install openssl
RUN apt-get install openssl -y
RUN mkdir -p /etc/nginx/ssl
# Generate a self-signed certificate
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=msekhsou.42.fr/UID=msekhsou"

RUN mkdir -p /var/www/html

# Copy the configuration file from your host to your current location

COPY conf/nginx.conf /etc/nginx/conf.d/test.conf


EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
