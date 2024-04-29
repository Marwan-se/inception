FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client

COPY ./tools/mariadb.sh .

RUN chmod +x ./mariadb.sh

ENTRYPOINT [ "./mariadb.sh" ]
