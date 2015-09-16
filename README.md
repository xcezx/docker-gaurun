# xcezx/gaurun

## Supported tags and respective `Dockerfile` links

- [`0.4.0` (*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/0.4.0/Dockerfile)
- [`0.3.0` (*Dockerfile*)](https://github.com/xcezx/docker-gaurun/blob/0.3.0/Dockerfile)

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v $PWD/gaurun.toml:/opt/gaurun.toml \
    -v $PWD/cert.pem:/opt/cert.pem \
    -v $PWD/key.pem:/opt/key.pem \
    xcezx/gaurun
```
