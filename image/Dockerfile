FROM debian:buster-slim

RUN apt-get update && apt-get install -y build-essential git libpcre3-dev ca-certificates

WORKDIR /usr/src

RUN bash -c "git clone https://github.com/status-im/nimbus-eth2.git"

WORKDIR /usr/src/nimbus-eth2

RUN bash -c "git checkout v1.0.2"

RUN bash -c "make nimbus_beacon_node"

ENTRYPOINT ["build/nimbus_beacon_node"]
