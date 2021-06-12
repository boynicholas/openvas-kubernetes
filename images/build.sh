#!/bin/sh

#docker build -f ./base-dockerfile.yaml -t nicholas/openvas:21.4.0 ./
docker build -f ./openvas-scanner.yaml --build-arg VERSION=21.4.0 -t nicholas/openvas-scanner:21.4.0 ./