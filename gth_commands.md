

### Create new account
``` ./scripts/create_account.sh ```
### List accounts
``` geth --datadir ~/ethdata/ account list ```
### Init genesis block
``` dos2unix ethdata/genesis.json &&  dos2unix ./scripts/init.sh && sudo chmod +x scripts/init.sh  && ./scripts/init.sh ```
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

``` eth.sendTransaction({from:"0x40593976caa7987996cf97368ec2dbf76e40ae54", to: "0x66990df685a49580e671d1114252f5c60171490c", value: web3.toWei(0.0001,"ether"),data:"" }); ```

### start miner

``` miner.start() ```

### stop miner
``` miner.stop() ```


`geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 40593976caa7987996cf97368ec2dbf76e40ae54 --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`

"enode://e655b2ce94fe040d14ff48373fed649d543c3ea584ea2523511007f8b7d01b4711a06d63015782bd46ae2d86c2ca3a4a2831e5499008c46f5e80c81d1c50e051@192.168.100.141:30303"


`geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc" --allow-insecure-unlock`

"enode://cdbd6242efaa218e4b09d73fc03160fe6a4c93cae7b55b558bf9ae75c2355a773b023852b8c3af13d026aad30268794f6e215421c98d5467e509848f7aad4ffd@192.168.100.142:30303"

geth --datadir="ethdata" --networkid 15 --nodiscover console --unlock 66990df685a49580e671d1114252f5c60171490c --rpc --rpcport "8000" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcapi "eth,net,web3,miner,debug,personal,rpc"

```
web3.fromWei(eth.getBalance(eth.coinbase), "ether")
```