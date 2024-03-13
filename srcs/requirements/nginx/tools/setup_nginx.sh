#!/bin/bash

mkdir $CERTS_
chmod 700 $CERTS_
# creates self-signed certificate, in production a certificate from a CA is needed
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERTS_/private.key -out $CERTS_/certificate.crt -subj "/C=DE/L=HN/O=42heilbronn/OU=student/CN=njantsch.42.fr"

envsubst '${CERTS_}' < /default.conf.template > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
