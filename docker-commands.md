## 1 Create containers

### Node 1
```
docker build -t node1 .
```

```
docker run --rm -it -p 8545:8545 --detach --net ETH  --name node1 node1
```

### Node 2

```
docker build -t node2 .
```

```
docker run --rm -it -p 8546:8546 --detach --net ETH --name node2 node2
```

## 2 Open containers

`docker exec -it node1 bash`

`docker exec -it node2 bash`


## 3. View networks

```
docker network inspect ETH
```