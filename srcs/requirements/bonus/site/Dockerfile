FROM alpine:3.17.0

WORKDIR /app

RUN apk update && \
    apk add --update nodejs npm

COPY ./conf /app

CMD ["node", "run.js"]