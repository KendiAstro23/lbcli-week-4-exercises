# Create a wallet with the name "btrustwallet".
#!/usr/bin/env bash

bitcoin-cli -regtest -named createwallet \
  wallet_name=btrustwallet \
  descriptors=true \
| grep -o '"name": *"[^"]*"' | cut -d'"' -f4