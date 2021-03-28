FROM debian:buster-slim

ARG release_version

RUN apt-get update && apt-get install -y build-essential git libpcre3-dev ca-certificates

WORKDIR /usr/src

RUN git clone https://github.com/status-im/nimbus-eth2.git

WORKDIR /usr/src/nimbus-eth2

RUN git checkout $release_version

RUN make update

RUN make nimbus_beacon_node

ENTRYPOINT ["build/nimbus_beacon_node"]
