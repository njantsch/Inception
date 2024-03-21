#!/bin/bash

REDIS_CONF="/etc/redis/redis.conf"

sed -i 's/^bind .*/bind 0.0.0.0/' "$REDIS_CONF"

# sets the maximum amount of memory
sed -i 's/^#*maxmemory .*/maxmemory 20mb/' "$REDIS_CONF"

# if maxmemory is reached, the least recently used keys will be removed from the dataset.
sed -i 's/^#*maxmemory-policy .*/maxmemory-policy allkeys-lru/' "$REDIS_CONF"

redis-server --protected-mode no
