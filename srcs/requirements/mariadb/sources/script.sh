#!/bin/sh
if !  ls var/lib/myqsl/sys &>/dev/null; then
	
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql -u root -e "CREATE DATABASE wordpress; CREATE USER 'ahaddad'@'%' IDENTIFIED BY 'ahaddad';GRANT ALL PRIVILEGES ON *.* TO 'ahaddad'@'%';"
mysql -u root < wordpress.sql
sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
/etc/init.d/mariadb stop

fi

exec /usr/bin/mysqld_safe
