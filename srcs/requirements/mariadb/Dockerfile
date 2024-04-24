FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client

COPY ./tools/mariadb.sh .

RUN chmod +x ./mariadb.sh

ENV DB_NAME=testdb
ENV MYSQL_USER=user
ENV SQL_PASSWORD=123
ENV SQL_ROOT_PASSWD=123=value

ENTRYPOINT [ "./mariadb.sh" ]

# CMD ["sleep", "infinity"]