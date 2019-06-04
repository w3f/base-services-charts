#!/bin/sh

wget https://github.com/heptio/velero/releases/download/v0.10.0/ark-v0.10.0-linux-amd64.tar.gz
tar -xvzf ark-v0.10.0-linux-amd64.tar.gz
./ark plugin add quay.io/stackpoint/ark-blockstore-digitalocean:v0.10.0 || true
