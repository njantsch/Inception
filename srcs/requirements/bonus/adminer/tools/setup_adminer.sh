#!/bin/bash

curl -L -o index.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
chmod 755 /var/www/html/index.php

php -S 0.0.0.0:80 -t /var/www/html/
