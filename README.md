# xcezx/gaurun

[![Build Status](https://travis-ci.org/xcezx/docker-gaurun.svg?branch=master)](https://travis-ci.org/xcezx/docker-gaurun)

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v `pwd`/gaurun.toml:/gaurun.toml \
    -v `pwd`/cert.pem:/cert.pem \
    -v `pwd`/key.pem:/key.pem \
    xcezx/gaurun \
    gaurun -c /gaurun.toml
```
