#!/bin/bash
set -e

if [ ! -L "/work/gaurun" ] ; then
    curl -L https://github.com/mercari/gaurun/archive/v$GAURUN_VERSION.tar.gz | tar -C /work --extract --gzip
    ln -s gaurun-$GAURUN_VERSION gaurun
    cd gaurun
    make gom
    make bundle
    make
fi

exec "$@"
