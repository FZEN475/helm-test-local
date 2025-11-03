FROM docker.io/alpine/helm:latest AS helm

RUN apk add --no-cache curl=8.14.1-r2

COPY entrypoint.sh fnc.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /source

ENTRYPOINT ["/entrypoint.sh"]