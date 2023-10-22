adduser --disabled-password "$FTP_USER"
echo "$FTP_USER":"$FTP_PASSWORD" | chpasswd

usermod --home /var/www/aquesada.42.fr/ "$FTP_USER"
chown "$FTP_USER":"$FTP_USER" /var/www/aquesada.42.fr/

echo "$FTP_USER" > /etc/vsftpd/vsftpd.allowed_users

exec vsftpd /etc/vsftpd/vsftpd.conf
