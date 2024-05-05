#!/bin/bash

adduser --home /var/www/html ${FTP_USER}

echo ${FTP_USER}:${FTP_PASSWORD} | chpasswd

sed -i -r "s/#write_enable=YES/write_enable=YES/1"   /etc/vsftpd.conf

service vsftpd stop

/usr/sbin/vsftpd /etc/vsftpd.conf