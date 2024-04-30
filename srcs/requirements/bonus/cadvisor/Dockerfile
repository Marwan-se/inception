FROM debian:bullseye

RUN apt-get update && apt-get install -y curl

RUN curl -L https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64 -o /bin/cadvisor \
    && chmod +x /bin/cadvisor


EXPOSE 9090

CMD ["/bin/cadvisor", "-port=9090"]