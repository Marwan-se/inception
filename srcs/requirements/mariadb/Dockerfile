FROM debian:bullseye

ARG DB_NAME \
    DB_USER \
    DB_USER_PASSWD \
    DB_ROOT_PASSWD

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y mariadb-server

COPY ./tools/mariadb.sh .

RUN chmod +x ./mariadb.sh

RUN ./mariadb.sh

ENTRYPOINT [ "mysqld"]
