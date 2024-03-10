FROM debian:bullseye

RUN apt update -y \
    && apt upgrade -y \
    && apt install nginx openssl -y

COPY ./tools/setup_nginx.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/setup_nginx.sh

EXPOSE 443

CMD ["setup_nginx.sh"]
