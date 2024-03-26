FROM debian:bullseye

RUN apt update -y \
    && apt upgrade -y \
    && apt install curl tar -y

COPY ./tools/setup_portainer.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup_portainer.sh

EXPOSE 9000

CMD [ "setup_portainer.sh" ]
