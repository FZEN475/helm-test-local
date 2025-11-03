FROM docker.io/alpine/helm:4.1 AS helm

RUN apk update && apk upgrade --no-cache && apk add --no-cache curl=8.18.0-r0

COPY entrypoint.sh fnc.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /source

ENTRYPOINT ["/entrypoint.sh"]