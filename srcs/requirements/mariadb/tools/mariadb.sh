#!/bin/sh

mysql_install_db

service mariadb start

if [ -d "/var/lib/mysql/$DB_NAME" ]; then
    echo "Database exists alrdy"
else
    mysql_secure_installation << _EOF_
Y
rootabc
rootabc
Y
n
Y
Y
_EOF_

echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_ROOT_PASSWD' ;FLUSH PRIVILEGES;" | mariadb -uroot

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME; GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWD'; FLUSH PRIVILEGES;" | mariadb -u root


fi

mariadb-admin shutdown

sed -i "s/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/"    /etc/mysql/mariadb.conf.d/50-server.cnf

mariadbd
