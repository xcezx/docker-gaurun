# xcezx/gaurun

## Supported tags and respective `Dockerfile` links

- [`0.4.0` (*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/0.4.0/Dockerfile)
- [`0.3.0` (*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/0.3.0/Dockerfile)

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v $PWD/gaurun.toml:/opt/gaurun/gaurun.toml \
    -v $PWD/cert.pem:/opt/gaurun/cert.pem \
    -v $PWD/key.pem:/opt/gaurun/key.pem \
    xcezx/gaurun:0.4.0
```
