FROM alpine:3.17

RUN apk -U upgrade && apk add nginx openssl
RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
	-keyout /etc/ssl/private/aquesada.42.fr_key.pem \
	-out /etc/ssl/certs/aquesada.42.fr_cert.pem -sha256 \
	-subj "/C=FR/ST=Paris/L=ecole42/ \
	O=42 ecole42/CN=aquesada.42.fr" && \
	openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
	-keyout /etc/ssl/private/bonus.aquesada.42.fr_key.pem \
	-out /etc/ssl/certs/bonus.aquesada.42.fr_cert.pem -sha256 \
	-subj "/C=FR/ST=Paris/L=ecole42/ \
	O=42 ecole42/CN=bonus.aquesada.42.fr" && \
	openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
	-keyout /etc/ssl/private/qbittorrent.aquesada.42.fr_key.pem \
	-out /etc/ssl/certs/qbittorrent.aquesada.42.fr_cert.pem -sha256 \
	-subj "/C=FR/ST=Paris/L=ecole42/ \
	O=42 ecole42/CN=qbittorrent.aquesada.42.fr"

RUN chmod 600 /etc/ssl/private/aquesada.42.fr_key.pem \
	/etc/ssl/certs/aquesada.42.fr_cert.pem \
	/etc/ssl/private/bonus.aquesada.42.fr_key.pem \
	/etc/ssl/certs/bonus.aquesada.42.fr_cert.pem \
	/etc/ssl/private/qbittorrent.aquesada.42.fr_key.pem \
	/etc/ssl/certs/qbittorrent.aquesada.42.fr_cert.pem

COPY conf/default.conf /etc/nginx/http.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
