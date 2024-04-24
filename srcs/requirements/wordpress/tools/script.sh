#!bin/sh

# DOMAIN_NAME=msekhsou.42.fr
DOMAIN_NAME=127.0.0.1

DB_NAME=mariadb
DB_USER=user
DB_USER_PASSWD=123
DB_ROOT_PASSWD=123
ADMIN_USER=marwan
ADMIN_PASSWORD=abc


wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_USER_PASSWD --dbhost=mariadb --allow-root

wp core install --url=$DOMAIN_NAME --title="Inception" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=info@wp-cli.org --allow-root

php-fpm -F