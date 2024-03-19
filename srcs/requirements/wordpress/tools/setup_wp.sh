#!/bin/bash

mkdir /run/php
# install wordpress command-line-interface
# reference: https://wp-cli.org/de/
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root --path=/var/www/html --locale=en_US
wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --allow-root
chmod 644 wp-config.php

wp core install --url=$DOMAIN_NAME --title="Inception" --admin_name=$WORDPRESS_ADMIN_NAME --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root

cp -f /www.conf /etc/php/7.4/fpm/pool.d/
chmod 644 /etc/php/7.4/fpm/pool.d/www.conf

php-fpm7.4 -F
