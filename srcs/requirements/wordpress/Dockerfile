FROM alpine:latest
RUN echo http://nl.alpinelinux.org/alpine/edge/community >> etc/apk/repositories
RUN apk update
RUN apk add phpmyadmin
RUN apk add php7-fpm
RUN apk add wget
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
COPY ./sources/wp-config.php /wordpress/
COPY sources/script.sh /
COPY sources/www.conf /etc/php7/php-fpm.d/
ENTRYPOINT ["/bin/sh", "/script.sh"]
