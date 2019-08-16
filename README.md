# vnfs
HAProxy - A Virtualized network function for load balancing
# Building docker image
1.  Clone and download the following repository  
[```Clone & Download```](https://github.com/ShankarAnush/vnfs.git)
2.  Validate the docker-compose.yml file and check the mapping using
```docker-compose config```
3.  Build images and create containers
```docker-compose up```
4.  Check the images and the network driver built
```docker images``` & ```docker network ls```
# Apache bench as traffic generator
Benchmark the setup using apache bench
```ab -n 10000 -c 30 http://172.18.0.4/```
