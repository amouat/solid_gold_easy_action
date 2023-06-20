#/bin/bash

apko build --arch $(uname -m) ./apko.yaml local_go out.tar
docker load < out.tar
docker build -t myapp .
