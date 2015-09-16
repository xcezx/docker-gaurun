# xcezx/gaurun

## Usage

```
docker run --name gaurun -d \
    -p 1056:1056 \
    -v $PWD/gaurun.toml:/opt/gaurun.toml \
    -v $PWD/cert.pem:/opt/cert.pem \
    -v $PWD/key.pem:/opt/key.pem \
    xcezx/gaurun
```
