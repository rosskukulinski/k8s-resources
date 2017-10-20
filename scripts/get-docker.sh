#!/bin/bash
echo "Downloading and installing Docker 1.12.6"

wget --show-progress --https-only --timestamping https://get.docker.com/builds/Linux/x86_64/docker-1.12.6.tgz

tar xvf docker-1.12.6.tgz

cp docker/docker* /usr/bin