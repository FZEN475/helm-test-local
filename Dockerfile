FROM docker.io/alpine/helm:4 AS helm

RUN apk add --no-cache \
    curl~=8.14 \
    python3~=3.12 \
    py3-pip~=24

COPY entrypoint.sh fnc.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /source

ENTRYPOINT ["/entrypoint.sh"]