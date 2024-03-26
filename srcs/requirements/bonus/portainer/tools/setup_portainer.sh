#!/bin/bash

curl -L https://github.com/portainer/portainer/releases/download/2.19.4/portainer-2.19.4-linux-amd64.tar.gz -o /tmp/portainer.tar.gz
tar -xzf /tmp/portainer.tar.gz -C /usr/local/bin/ --strip-components=1
chmod +x /usr/local/bin/portainer

echo -n $PORTAINER_PASSWORD > /tmp/portainer_password
portainer --admin-password-file /tmp/portainer_password\
          --http-enabled \
          -H unix:///var/run/docker.sock

