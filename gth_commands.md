
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


``` eth.sendTransaction({from:"0xacbbd6952f7ed4adebfa8f51ee611e80a743b724", to: "0x3364a450b75c3517eb0d131e3d2f66f43e33537f", value: web3.toWei(0.0001,"ether"),data:"" }); ```


### start miner

``` miner.start() ```

### stop miner
``` miner.stop() ```



`  geth --datadir ~/ethdata/  --networkid 4088  --identity="NODE_ONE" --nodiscover console --unlock acbbd6952f7ed4adebfa8f51ee611e80a743b724 --rpc --rpcport "8545" --rpcaddr "172.22.0.2"  --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`  geth  --datadir ~/ethdata/ --networkid 4088  --identity="NODE_TWO" --nodiscover console --unlock 3364a450b75c3517eb0d131e3d2f66f43e33537f --rpc --rpcport "8546" --rpcaddr "172.22.0.3"  --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`


`geth --datadir ~/ethdata/ --identity="NODE_ONE" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc --rpcaddr 172.22.0.2 console`


`geth --identity="NODE_TWO" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc -rpcport "8546" --rpcaddr 0.0.0.0 console`


geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc"

```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```

geth --identity="NODE_ONE" --networkid="500" --verbosity=1 --mine --minerthreads=1 --rpc --rpcaddr 0.0.0.0 console



`eth.blockNumber`

`eth.hashrate`


"enode://99d63823e74a16f26d3604f46f5a1a52e63e02f97ed098145379204d9fdc020f59abe9f2f24f51c3e78e97e1ea91281333015e7bbaaafab705853d7c666c4094@172.22.0.3:30303?discport=0"

"enode://0080c14a14bec2b3ca42ba6f8d8da59c787abc348c2861ccd2d4008a1de1a504b88b3caab9833249b94d9ca42d8a80dfd674f64e69302d7ebece6d286c4f80f2@172.22.0.2:30303?discport=0"