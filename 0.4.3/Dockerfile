FROM debian:jessie
MAINTAINER xcezx <main.xcezx@gmail.com>

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       ca-certificates \
       wget \
    && rm -rf /var/lib/apt/lists/*

ENV GAURUN_VERSION 0.4.3
ENV GAURUN_DOWNLOAD_URL https://github.com/mercari/gaurun/releases/download/v$GAURUN_VERSION/gaurun-linux-amd64-$GAURUN_VERSION.tar.gz
RUN set -x \
    && wget -O gaurun-$GAURUN_VERSION.tar.gz $GAURUN_DOWNLOAD_URL \
    && tar -xvf gaurun-$GAURUN_VERSION.tar.gz \
    && install -m 755 gaurun-$GAURUN_VERSION/gaurun /usr/local/bin/gaurun \
    && install -m 755 gaurun-$GAURUN_VERSION/gaurun_recover /usr/local/bin/gaurun_recover \
    && rm -rf garunt-$GAURUN_VERSION.tar.gz gaurun-$GAURUN_VERSION
