FROM alpine:3.17

RUN apk -U upgrade && apk add mariadb
RUN mariadb-install-db --user=root --datadir=/var/lib/mysql --skip-test-db
RUN mkdir /run/mysqld/
COPY tool/mariadb-init.sql tool/entrypoint.sh /etc/.

ENTRYPOINT ["sh", "/etc/entrypoint.sh"]
