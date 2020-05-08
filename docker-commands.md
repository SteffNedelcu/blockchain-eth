## 1 Create containers

### Node 1
```
docker build -t node1 .
```

```
docker run -it -p 8545:8545 --detach --net ETH  --name node1 node1 -v C:\Users\stefan.nedelcu\Documents\blockchain-eth:/home/ethuser
```

### Node 2

```
docker build -t node2 .
```

```
docker run -it -p 8546:8546 --detach --net ETH --name node2 node2 -v C:\Users\stefan.nedelcu\Documents\blockchain-eth:/home/ethuser
```

## 2 Open containers

`docker exec -it node1 bash`

`docker exec -it node2 bash`


## 3. View networks

```
docker network inspect ETH
```