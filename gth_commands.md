

### Create new account
``` ./scripts/create_account.sh ```
### List accounts
``` geth --datadir ~/eth_common/ account list ```
### Init genesis block
``` dos2unix eth_common/genesis.json && ./scripts/init.sh ```
### Connect to node
``` ./scripts/start_node.sh xxxxxxxx ```

### start node1

```
geth --identity="NODE_ONE" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc --rpcaddr 0.0.0.0 console
```


### start node1

```
geth --identity="NODE_TWO" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc --rpcport=8546 --rpcaddr 0.0.0.0 console
```

# Node commands
### node info
``` admin.nodeInfo.enode ```

### add peer

``` /scripts/add_peers.sh ```

### get peers

``` admin.peers ```

### make transaction

``` eth.sendTransaction({from:"0xc48ae33f357c9d0ed99d5632267c35ca061e66af", to: "0x44a85fca07826432072b48b9607014c2a38078cf", value: web3.toWei(0.0001,"ether"),data:"" }); ```

### start miner

``` miner.start() ```

### stop miner
``` miner.stop() ```


`  geth  --networkid 4088  --identity="NODE_ONE" --nodiscover console --unlock 4e4d04aef11fbe55172c7f845640e80372e15c29 --rpc --rpcport "8545" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`  geth  --networkid 4088  --identity="NODE_TWO" --nodiscover console --unlock de8d814ccb3772d513e9ab381d3ae8304307bbaa --rpc --rpcport "8546" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`geth --identity="NODE_ONE" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc --rpcaddr 0.0.0.0 console`


`geth --identity="NODE_TWO" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc -rpcport "8546" --rpcaddr 0.0.0.0 console`


```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```