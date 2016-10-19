# DockerParseyAPI

Dockerfile for 
https://github.com/dsindex/syntaxnet/blob/master/README_api.md


```
make start
```

Troubles? 
```
make rebuild-all
```
 
Will build a version of parsey mcparseface with patches to expose protobuffers   
service will fire up on 0.0.0.0:9000


Use docker attach to grab instance 


```
docker ps // find the associated container id
docker attach containerId
```




#OSX - Node Client
![Alt text](https://raw.githubusercontent.com/johndpope/DockerParseyAPI/master/images/node_results.png "Node JS client")

https://github.com/johndpope/DockerParseyAPI/tree/master/clients/node_client


#ios - Client
https://github.com/johndpope/DockerParseyAPI/tree/master/clients/ios_client

