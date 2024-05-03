#!/bin/bash

# run redis in foreground
sed -i 's/^bind 127\.0\.0\.1 ::1/bind 0.0.0.0/' /etc/redis/redis.conf

chmod 700 /redis.sh
redis-server --daemonize no --protected-mode no