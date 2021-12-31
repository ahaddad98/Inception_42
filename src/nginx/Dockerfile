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
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
RUN rc-service nginx start

