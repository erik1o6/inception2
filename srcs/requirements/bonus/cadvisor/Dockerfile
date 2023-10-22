FROM alpine:3.17

RUN apk -U upgrade && \
 wget -O /etc/cAdvisor \
 https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64 && \
 chmod +x /etc/cAdvisor

ENTRYPOINT ["/etc/cAdvisor"]
