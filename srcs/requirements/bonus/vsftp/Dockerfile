FROM debian:bullseye

RUN apt update -y \
    && apt upgrade -y \
    && apt install vsftpd -y

COPY ./conf/vsftpd.conf /etc/vsftpd/
COPY ./tools/setup_vsftpd.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup_vsftpd.sh

CMD [ "setup_vsftpd.sh" ]
