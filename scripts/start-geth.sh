#!/bin/sh
#
# Starts a local fast-synced geth node exposing websocket.

DEFAULT_NETWORK=mainnet

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi


if [ "$START_GETH" != "" ]; then
	if [ "$NETWORK" != "$DEFAULT_NETWORK" ]; then
		exec geth --goerli --ws --ws.addr "0.0.0.0" --ws.origins=* --ws.api "eth,net" --ipcdisable --nousb
	else
		exec geth --ws --ws.addr "0.0.0.0" --ws.origins=* --ws.api "eth,net" --ipcdisable --nousb
	fi
fi
