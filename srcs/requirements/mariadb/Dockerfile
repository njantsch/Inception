FROM debian:bullseye

RUN apt udpate -y \
    && apt upgrade -y \
    && apt install mariadb-server -y

CMD ["mysqld_safe"]
