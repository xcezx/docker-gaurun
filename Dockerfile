FROM alpine:3.3
MAINTAINER xcezx <main.xcezx@gmail.com>

ENV GAURUN_VERSION ${GAURUN_VERSION:-0.4.3}

RUN apk add --update ca-certificates && rm -rf /var/cache/apk/*
RUN wget -O - https://github.com/mercari/gaurun/releases/download/v${GAURUN_VERSION}/gaurun-linux-amd64-${GAURUN_VERSION}.tar.gz \
    | tar vzxf - \
    && install -m 755 /gaurun-${GAURUN_VERSION}/gaurun /usr/local/bin/gaurun \
    && install -m 755 /gaurun-${GAURUN_VERSION}/gaurun_recover /usr/local/bin/gaurun_recover \
    && rm -rf /gaurun-${GAURUN_VERSION}

ONBUILD ADD gaurun.toml /etc/gaurun/gaurun.toml
ONBUILD ADD ssl /etc/gaurun/ssl

EXPOSE 1056

CMD ["gaurun", "-c", "/etc/gaurun/gaurun.toml"]
