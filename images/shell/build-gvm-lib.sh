#!/bin/sh

apt-get -y install curl cmake pkg-config libglib2.0-dev libgpgme-dev libgnutls28-dev  uuid-dev libssh-gcrypt-dev libhiredis-dev \
libxml2-dev libpcap-dev libnet1-dev

curl -s -o /tmp/gvm-libs.tar.gz https://codeload.github.com/greenbone/gvm-libs/tar.gz/refs/tags/v${VERSION} \
  && cd /tmp/ \
  && tar -zxf gvm-libs.tar.gz \
  && cd gvm-libs-$VERSION \
  && mkdir build && cd build \
  && cmake -DCMAKE_INSTALL_PREFIX=/opt/gvm .. \
  && make && make install

echo "gvm-lib:$VERSION install success..."