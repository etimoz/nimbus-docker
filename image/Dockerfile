FROM debian:buster-slim

ARG release_version

RUN apt-get update && apt-get install -y build-essential git libpcre3-dev ca-certificates

WORKDIR /usr/src

RUN bash -c "git clone https://github.com/status-im/nimbus-eth2.git"

WORKDIR /usr/src/nimbus-eth2

RUN bash -c "git checkout $release_version"

RUN bash -c "make -j $(nproc) nimbus_beacon_node"
