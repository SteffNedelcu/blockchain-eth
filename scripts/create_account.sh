#!/bin/bash
# Create a new Ethereum Account
# geth --datadir ~/ethdata/ --password ~/ethdata/password account new
geth --datadir ~/ethdata/ --password ~/scripts/password account new

echo "COPY THIS ADDRESS"