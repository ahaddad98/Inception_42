FROM alpine:latest
RUN apk update
RUN apk add php7 php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl \
	php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap \
	php7-mbstring php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype \
	php7-dom php7-opcache php7-zlib php7-session php7-intl php7-zip

RUN apk add wget
COPY ./conf/adminer-4.8.1.php /
RUN mv /adminer-4.8.1.php /index.php
#RUN chown -R 999:999 /var/www/html/adminer.php
#RUN chmod 755 /var/www/html/adminer.php
#RUN 
COPY ./tools/script.sh /
ENTRYPOINT ["/bin/sh", "/script.sh"]
