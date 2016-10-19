# Docker Parsey McParseface - API


## Installation
https://docs.docker.com/engine/installation/

```
make start
```

## Troubles? 
```
make rebuild-all
```
 
Will build a version of parsey mcparseface with patches to expose protobuffers  on http://0.0.0.0:9000


## Proto format
https://github.com/johndpope/DockerParseyMcParsefaceAPI/blob/master/clients/node_client/api/syntaxnet/sentence.proto

```protobuf
syntax = "proto3";

package cali.nlp;

import "syntaxnet/sentence.proto";

message ParseyRequest {
  repeated string text = 1;
};

message ParseyResponse {
  repeated syntaxnet.Sentence result = 1;
};

service ParseyService {
  rpc Parse(ParseyRequest) returns (ParseyResponse);
}
```



## OSX - Node Client
![Alt text](https://raw.githubusercontent.com/johndpope/DockerParseyAPI/master/images/node_results.png "Node JS client")

https://github.com/johndpope/DockerParseyAPI/tree/master/clients/node_client


## ios - Client
https://github.com/johndpope/DockerParseyAPI/tree/master/clients/ios_client



## Credits
Dockerfile for Myungchul Shin patches on syntaxnet
https://github.com/dsindex/syntaxnet/blob/master/README_api.md

Original API work from David Mansfield
https://github.com/dmansfield/parsey-mcparseface-api




## TensorFlow   
https://github.com/tensorflow/tensorflow/

## Parsey McParseface / Syntaxnet   
https://github.com/tensorflow/models/tree/master/syntaxnet

## Protocol Buffers   
https://developers.google.com/protocol-buffers/

## Docker   
https://www.docker.com/

