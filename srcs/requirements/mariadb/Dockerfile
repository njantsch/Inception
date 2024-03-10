FROM debian:bullseye

RUN apt udpate -y \
    && apt upgrade -y \
    && apt install mariadb-server -y

EXPOSE 3306

CMD ["mysqld_safe"]
