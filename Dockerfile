FROM golang:1.4
MAINTAINER xcezx <main.xcezx@gmail.com>

ENV GAURUN_VERSION 0.3.0

WORKDIR "/work"

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1056
CMD ["/work/gaurun/bin/gaurun", "-c", "/work/gaurun/conf/gaurun.toml"]
