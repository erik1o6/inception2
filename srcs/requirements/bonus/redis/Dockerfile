FROM alpine:3.17

RUN apk -U upgrade && apk add redis

ENTRYPOINT ["redis-server", "--protected-mode no"]
