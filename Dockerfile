FROM docker.io/alpine/helm:4 AS helm

RUN apk add --no-cache \
    curl=8.14.1-r2 \
    python3=3.12.12-r0 \
    py3-pip=24.3.1-r0

COPY entrypoint.sh fnc.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /source

ENTRYPOINT ["/entrypoint.sh"]