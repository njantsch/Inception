FROM debian:bullseye

WORKDIR /var/www/html

RUN apt update -y \
    && apt upgrade -y \
    && apt install python3 -y

COPY www .
COPY tools .

RUN chmod +x http_website.py
RUN chmod 744 index.html

EXPOSE 8083

CMD [ "python3", "http_website.py" ]
