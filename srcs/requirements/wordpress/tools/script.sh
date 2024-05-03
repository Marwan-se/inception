#!bin/sh

# DOMAIN_NAME=msekhsou.42.fr

sleep 5

if wp core is-installed --allow-root; then
    php-fpm7.4 -F
fi

wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_USER_PASSWD --dbhost=mariadb --allow-root

wp core install --url=$DOMAIN_NAME --title="Inception" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=info@wp-cli.org --allow-root

wp user create $NWUSER $NWUSER_EMAIL --role=subscriber --user_pass=$NWUSER_PASSWD --allow-root

wp theme install componentz --allow-root

wp theme activate componentz --allow-root

#redis bonus

wp plugin install redis-cache --allow-root
wp plugin activate redis-cache --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379  --allow-root
wp config set WP_CACHE true --raw --allow-root
wp redis enable --allow-root

#end redis bonus


php-fpm7.4 -F