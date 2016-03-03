# xcezx/gaurun

[![Build Status](https://travis-ci.org/xcezx/docker-gaurun.svg?branch=master)](https://travis-ci.org/xcezx/docker-gaurun)

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v $PWD/gaurun.toml:/etc/gaurun/gaurun.toml \
    -v $PWD/cert.pem:/etc/gaurun/ssl/cert.pem \
    -v $PWD/key.pem:/etc/gaurun/ssl/key.pem \
    xcezx/gaurun
```
