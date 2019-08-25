# vnfs
HAProxy - A Virtualized network function for load balancing. HAProxy is an open source high availability solution which provides load balacing and proxying for TCP and HTTP based applications by spreading requests across multiple servers.
# Building docker image
1.  Clone and download the following repository 
[```Clone & Download```](https://github.com/ShankarAnush/vnfs.git)
2.  Validate the docker-compose.yml file and check the mapping using
```docker-compose config```
3.  Build images and create containers
```docker-compose up --build```
4.  Check the images and the network driver built using
```docker images``` & ```docker network ls```
# Benchmarking on the local machine
The HTTP requests from a client probe(apache bench load generator) is passed thru HAProxy which balances the load between two apache webservers. Four docker containers are created for client, HAProxy_VNF, apache server 1 and 2 respectively. The benchmark results can be obtained from a .txt file as depicted below. Once you build the images please use a parallel terminal to execute the below commands so that you will be able to see the HTTP logs as well.
# Obtaining benchmarking data and HTTP loggin on the terminal
1.  To pass the requests, run the command,
```docker exec -it haproxy_client ./script.sh```
2.  Obtain the benchmark data using
```docker exec -it haproxy_client cat test.txt```

