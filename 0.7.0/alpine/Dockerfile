FROM alpine:3.4
MAINTAINER xcezx <main.xcezx@gmail.com>

RUN apk add --no-cache ca-certificates

ENV GAURUN_VERSION 0.7.0
ENV GAURUN_SHA1 79510ecce5148a58ae3620158ba9f52c6fe1f87c

RUN apk add --no-cache --virtual .build-deps \
        tar \
        wget \
    && wget -O gaurun.tar.gz "https://github.com/mercari/gaurun/releases/download/v$GAURUN_VERSION/gaurun-linux-amd64-$GAURUN_VERSION.tar.gz" \
    && echo "$GAURUN_SHA1  gaurun.tar.gz" | sha1sum -c - \
    && tar -xzf gaurun.tar.gz -C /usr/local/bin --strip-components=1 \
    && rm gaurun.tar.gz \
    && apk del .build-deps

# overwrite
CMD ["/usr/local/bin/gaurun", "-v"]

