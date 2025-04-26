#!/bin/bash
# Install dependencies
sudo apt-get update
sudo apt-get install -y git make curl

# Clone node software
git clone https://github.com/berachain/bera-chain.git
cd bera-chain
make install

# Init node
berad init my-node --chain-id=berachain-testnet-1
berad start
