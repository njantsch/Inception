FROM debian:bullseye

WORKDIR /var/www/html

RUN apt update -y \
    && apt upgrade -y \
    && apt install php php-mysql curl -y

COPY ./tools/setup_adminer.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/setup_adminer.sh

EXPOSE 80

CMD [ "setup_adminer.sh" ]
