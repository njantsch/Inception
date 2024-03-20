FROM debian:bullseye

WORKDIR /var/www/html

RUN apt update -y \
    && apt upgrade -y \
    && apt install php-fpm php-mysql curl -y

COPY ./tools/setup_wp.sh /usr/local/bin/
COPY ./conf/www.conf /

RUN chmod +x /usr/local/bin/setup_wp.sh

EXPOSE 9000

CMD ["setup_wp.sh"]
