FROM debian:bullseye

RUN apt update -y \
    && apt upgrade -y \
    && apt install redis -y

COPY ./tools/setup_redis.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/setup_redis.sh

EXPOSE 6379

CMD [ "setup_redis.sh" ]
