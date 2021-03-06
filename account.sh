export ETH_RPC_URL=http://127.0.0.1:2000
# export ETH_RPC_URL=https://ropsten.infura.io/v3/ec948dd1e419466ab5f9600ccabfbfc3

# export ETH_KEYSTORE=./keystore
# export ETH_PASSWORD="/dev/null"
# Use these for local nodes (ie. eth-tx-node)
export ETH_RPC_ACCOUNTS=yes
export ETH_FROM=$(seth rpc eth_coinbase)

export ETH_FROM=$(seth accounts | head -n1 | cut -d' ' -f1)
echo Balance of $ETH_FROM is $(seth balance $ETH_FROM)


export ETH_GAS_PRICE=2500000000
export ETH_GAS=6000000