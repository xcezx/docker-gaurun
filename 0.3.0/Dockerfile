FROM golang:1.4
MAINTAINER xcezx <main.xcezx@gmail.com>

ENV GAURUN_VERSION 0.3.0
ENV PATH $PATH:/opt/gaurun-$GAURUN_VERSION/bin

RUN curl -L https://github.com/mercari/gaurun/archive/v$GAURUN_VERSION.tar.gz | tar -C /opt --extract --gzip \
    && cd /opt/gaurun-$GAURUN_VERSION \
    && make gom \
    && make bundle \
    && make

ONBUILD ADD gaurun.toml /opt/gaurun.toml
ONBUILD ADD cert.pem    /opt/cert.pem
ONBUILD ADD key.pem     /opt/key.pem

CMD ["gaurun", "-c", "/opt/gaurun.toml"]
