#!/bin/bash

chown nobody:nogroup /home/$FTP_USER/vsftp
chmod a-w /home/$FTP_USER/vsftp

mkdir -p /var/run/vsftpd/empty

adduser $FTP_USER --disabled-password
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd

chown $FTP_USER:$FTP_USER /home/$FTP_USER/vsftp/files

echo "$FTP_USER" | tee -a /etc/vsftpd.userlist

vsftpd /etc/vsftpd/vsftpd.conf


# To test, use ftp CLI:
# ftp <container IP> <port if not 21>
