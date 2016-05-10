# xcezx/gaurun

[![Build Status](https://travis-ci.org/xcezx/docker-gaurun.svg?branch=master)](https://travis-ci.org/xcezx/docker-gaurun)

| Tag   | Size |
|-------|------|
| 0.4.3 [(*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/master/0.4.3/Dockerfile) | [![](https://imagelayers.io/badge/xcezx/gaurun:0.4.3.svg)](https://imagelayers.io/?images=xcezx/gaurun:0.4.3 'Get your own badge on imagelayers.io') |
| 0.4.2 [(*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/0.4.2/Dockerfile) | [![](https://imagelayers.io/badge/xcezx/gaurun:0.4.2.svg)](https://imagelayers.io/?images=xcezx/gaurun:0.4.2 'Get your own badge on imagelayers.io') |

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v `pwd`/gaurun.toml:/gaurun.toml \
    -v `pwd`/cert.pem:/cert.pem \
    -v `pwd`/key.pem:/key.pem \
    xcezx/gaurun:0.4.3 \
    gaurun -c /gaurun.toml
```
