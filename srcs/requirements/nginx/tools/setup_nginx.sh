#!/bin/bash

mkdir $CERT
chmod 700 $CERT
# creates self-signed certificate, in production a certificate from a CA is needed
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERT/private.key -out $CERT/certificate.crt -subj "/C=DE/L=HN/O=42heilbronn/OU=student/CN=njantsch.42.fr"

envsubst '${CERT}' < /default.conf.template > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
