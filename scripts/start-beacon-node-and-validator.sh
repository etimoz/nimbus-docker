#!/bin/bash

if [ "$IMPORT_LAUNCHPAD_KEYSTORES" != "" ]; then
  echo $KEYSTORE_PWD | /usr/src/nimbus-eth2/build/nimbus_beacon_node --data-dir=/var/lib/nimbus --log-file=/var/lib/nimbus/beacon_node.log --network=$NETWORK deposits import /var/lib/nimbus/validator_keys
fi

/usr/src/nimbus-eth2/build/nimbus_beacon_node --tcp-port=9000 --udp-port=9000 --web3-url=$VOTING_ETH1_NODE --data-dir=/var/lib/nimbus --log-file=/var/lib/nimbus/beacon_node.log --network=$NETWORK --graffiti="$GRAFFITI"
