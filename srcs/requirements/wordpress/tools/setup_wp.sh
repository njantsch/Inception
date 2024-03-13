#!/bin/bash

mkdir -p /var/www/html

# install wordpress command-line-interface
# reference: https://wp-cli.org/de/
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

