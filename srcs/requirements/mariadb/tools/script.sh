#!/bin/sh
if !  ls var/lib/myqsl/sys &>/dev/null; then
	
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql -u root -e "CREATE DATABASE $DATABASE; CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';"
mysql -u root -e "CREATE USER 'amine'@'%' IDENTIFIED BY 'amine'"
mysql -u root < wordpress.sql
sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
mysql -u root -e "alter user 'root'@'localhost' identified by 'amine'";
/etc/init.d/mariadb stop

fi

exec /usr/bin/mysqld_safe
