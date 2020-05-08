#!/bin/bash
# Create a new Ethereum Account
# geth --datadir ~/eth_common/ --password ~/eth_common/password account new
geth --datadir ~/ethdata/ --password ~/scripts/password account new

echo "COPY THIS ADDRESS"