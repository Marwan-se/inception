FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install redis-server -y

COPY ./tools/redis.sh /

RUN chmod +x /redis.sh

EXPOSE 6379
