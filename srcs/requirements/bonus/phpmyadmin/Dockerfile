FROM alpine:latest
RUN apk update
RUN apk add wget
RUN apk add phpmyadmin
RUN apk add php7-fpm 
WORKDIR /usr/share/
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv -f /usr/share/phpMyAdmin-5.0.2-all-languages/ phpmyadmin
RUN rm /usr/share/phpmyadmin/config.sample.inc.php
COPY ./sources/config.inc.php /usr/share/phpmyadmin/
EXPOSE 5050
COPY sources/script.sh /
ENTRYPOINT ["/bin/sh", "/script.sh"]
