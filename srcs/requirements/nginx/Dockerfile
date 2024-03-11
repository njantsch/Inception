FROM debian:bullseye

RUN apt update -y \
    && apt upgrade -y \
    && apt install gettext nginx openssl -y

COPY ./tools/setup_nginx.sh /usr/local/bin/
COPY ./conf/default.conf.template /

RUN chmod +x /usr/local/bin/setup_nginx.sh

EXPOSE 443

CMD ["setup_nginx.sh"]
