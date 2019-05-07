#!/bin/bash
# Install the required softwares for Ethereum
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get -y install ethereum
sudo apt install -y nodejs npm
sudo npm install -g -y ethereumjs-testrpc
sudo npm install -g -y truffle

# make directory
sudo mkdir ~/ethdata
sudo chown ubuntu ~/ethdata