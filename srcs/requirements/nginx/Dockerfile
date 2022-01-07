FROM alpine:latest
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig 
COPY ./sources/nginx.conf /etc/nginx/
COPY ./sources/index.html /www
RUN apk add openssl
RUN mkdir /etc/ssl/private
RUN chmod 700 /etc/ssl/private
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
COPY sources/script.sh /
ENTRYPOINT ["/bin/sh", "/script.sh"]
