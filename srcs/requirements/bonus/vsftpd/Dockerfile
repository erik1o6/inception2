FROM alpine:3.17

RUN apk -U upgrade && apk add vsftpd shadow

COPY tool/entrypoint.sh /etc/.
COPY conf/vsftpd.conf /etc/vsftpd/.

ENTRYPOINT ["sh", "/etc/entrypoint.sh"]
