#!/bin/sh

echo -e "123123123\n123123123" | adduser ahaddad
echo ahaddad | tee -a /etc/vsftpd.userlist
mkdir /home/ahaddad/wordpress
chown -R ahaddad:ahaddad /home/ahaddad/
#chmod 777 /home/ahaddad/wordpress

exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
