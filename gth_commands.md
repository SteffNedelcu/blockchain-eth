
dos2unix ./scripts/makeunix.sh


### Create new account
``` ./scripts/create_account.sh ```
### List accounts
``` geth --datadir ~/ethdata/ account list ```
### Init genesis block
<<<<<<< HEAD
``` dos2unix ethdata/genesis.json &&  dos2unix ./scripts/init.sh && sudo chmod +x scripts/init.sh  && ./scripts/init.sh ```
=======
``` dos2unix ethdata/genesis.json && ./scripts/init.sh ```
>>>>>>> 186edb05fb6b718ef599821322eaae68ecf25c08
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

<<<<<<< HEAD

``` eth.sendTransaction({from:"0xacbbd6952f7ed4adebfa8f51ee611e80a743b724", to: "0x3364a450b75c3517eb0d131e3d2f66f43e33537f", value: web3.toWei(0.0001,"ether"),data:"" }); ```
=======
``` eth.sendTransaction({from:"0xfddb58c03b0b1e14dfe0271a6476ecabd48d48c2", to: "0x8FC14D5cF1528Df2A58C375a96C3a2088a4BecF0", value: web3.toWei(0.1,"ether"),data:"" }); ```
>>>>>>> 122b397652d4a9844cdab9b3cc22cdde5ece9e58


### start miner

``` miner.start() ```

### stop miner
``` miner.stop() ```


`  geth --datadir ~/ethdata/  --networkid 4777  --identity="NODE_ONE" --nodiscover console --unlock ddcf51e3d0f4e568ccf1fc5e9596220f552dbce0 --rpc --rpcport "8545" --rpcaddr "0.0.0.0"  --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`  geth  --datadir ~/ethdata/ --networkid 4777  --identity="NODE_TWO" --nodiscover console --unlock fddb58c03b0b1e14dfe0271a6476ecabd48d48c2 --rpc --rpcport "8546" --rpcaddr "0.0.0.0"  --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`




geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc"

```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```




`eth.blockNumber`

`eth.hashrate`


"enode://99d63823e74a16f26d3604f46f5a1a52e63e02f97ed098145379204d9fdc020f59abe9f2f24f51c3e78e97e1ea91281333015e7bbaaafab705853d7c666c4094@172.22.0.3:30303?discport=0"

enode://dbc8d97a1dafe47c93b26b268c3fdba120f33e91c8d0b8241dc3b3aebbb3bfd46d55633d80491a4fbcf3b495d6a38504360c2e0aa525d2dc632cdb55a2acc077@172.22.0.3:30303?discport=0

"enode://dbc8d97a1dafe47c93b26b268c3fdba120f33e91c8d0b8241dc3b3aebbb3bfd46d55633d80491a4fbcf3b495d6a38504360c2e0aa525d2dc632cdb55a2acc077@172.22.0.3:30303?discport=0"