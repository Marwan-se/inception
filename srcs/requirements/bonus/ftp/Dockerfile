FROM debian:bullseye

RUN apt-get update && apt-get install -y vsftpd ftp

COPY ./tools/ftp.sh .

RUN chmod +x ftp.sh

CMD ["./ftp.sh"]
