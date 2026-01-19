FROM docker.io/alpine/helm:4 AS helm

RUN apk add --no-cache curl python3 py3-pip

COPY entrypoint.sh fnc.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /source

ENTRYPOINT ["/entrypoint.sh"]