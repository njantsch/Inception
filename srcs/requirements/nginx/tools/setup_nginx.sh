#!/bin/bash

mkdir /etc/nginx/ssl
chmod 700 /etc/nginx/ssl
# creates self-signed certificate, in production a certificate from a CA is needed
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/certificate.crt -subj "/C=DE/L=HN/O=42heilbronn/OU=student/CN=njantsch.42.fr"

# creates right nginx config
echo "server {
  listen 443 ssl;
  server_name njantsch.42.fr;

  ssl_certificate /etc/nginx/ssl/certificate.crt;
  ssl_certificate_key /etc/nginx/ssl/private.key;

  ssl_protocols TLSv1.3;

  location / {
    root /usr/share/nginx/html;
    index index.html index.htm;
  }
}" > /etc/nginx/conf.d/inception.conf

nginx -g "daemon off;"
