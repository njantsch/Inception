#!/bin/bash

mkdir -p /home/$FTP_USER/vsftp
chown nobody:nogroup /home/$FTP_USER/vsftp
chmod a-w /home/$FTP_USER/vsftp

mkdir -p /var/run/vsftpd/empty

adduser $FTP_USER --disabled-password
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

mkdir /home/$FTP_USER/vsftp/files
chown $FTP_USER:$FTP_USER /home/$FTP_USER/vsftp/files

echo "$FTP_USER" | tee -a /etc/vsftpd.userlist

vsftpd /etc/vsftpd/vsftpd.conf
