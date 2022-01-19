#!/bin/sh
#service php7.3-fpm start
#service php7.3-fpm stop
#php-fpm7.3 -F -R
exec /usr/sbin/php-fpm7 --nodaemonize
