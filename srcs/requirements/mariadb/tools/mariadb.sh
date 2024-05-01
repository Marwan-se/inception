#!bin/bash


sed -i "s/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/"    /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"

mysql -e "CREATE USER IF NOT EXISTS \`${DB_USER}\`@'localhost' IDENTIFIED BY '${DB_USER_PASSWD}';"

mysql -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_USER_PASSWD}';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWD}';"

mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$DB_ROOT_PASSWD shutdown