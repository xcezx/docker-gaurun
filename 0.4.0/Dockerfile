FROM ubuntu:14.04
MAINTAINER xcezx <main.xcezx@gmail.com>

ENV PATH $PATH:/opt/gaurun

ADD https://github.com/mercari/gaurun/releases/download/v0.4.0/gaurun-linux-amd64-0.4.0.tar.gz /tmp/gaurun-linux-amd64-0.4.0.tar.gz
RUN tar -C /opt -xvf /tmp/gaurun-linux-amd64-0.4.0.tar.gz \
    && rm /tmp/gaurun-linux-amd64-0.4.0.tar.gz \
    && ln -s /opt/gaurun-0.4.0 /opt/gaurun

ONBUILD ADD gaurun.toml /opt/gaurun/gaurun.toml
ONBUILD ADD cert.pem /opt/gaurun/cert.pem
ONBUILD ADD key.pem /opt/gaurun/key.pem

EXPOSE 1056

CMD ["gaurun", "-c", "/opt/gaurun/gaurun.toml"]
