# Use this docker-compose.yml file to start services.
# https://github.com/johndpope/DockerParseyAPI

# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/docker
# https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile.devel
# https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile.devel-gpu


FROM gcr.io/tensorflow/tensorflow:latest-devel

ENV SYNTAXNETDIR=/work/serving/tensorflow PATH=$PATH:/root/bin

#https://tensorflow.github.io/serving/setup
RUN apt-get update && apt-get install -y \
        build-essential \
        curl \
        git \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        libcurl3-dev \
        #libgrpc-dev \
        pkg-config \
        python-dev \
        python-numpy \
        python-pip \
        software-properties-common \
        swig \ 
        wget \
        zip \
        zlib1g-dev

RUN  wget https://gist.githubusercontent.com/johndpope/fc1c2327a4ae255d9c44dda9b67b5288/raw/406369ecc157d60f7a9bac2a0d5be3da9aa62e56/parseyapi.sh \
    && chmod +x parseyapi.sh \
    && ./parseyapi.sh 
    

EXPOSE 9000
RUN find / -name "parsey_api" -size +512k  |xargs cp -t  /work/serving 
RUN cd /work/serving
WORKDIR /work/serving
CMD ["/bin/bash"]


# COMMANDS to build and run API Server
# ===============================
# docker-compose up
#
# mkdir build && cp Dockerfile build/ && cd build
# docker build -t dsparseyapi .
# docker run dsparseyapi --net=host -p 9000:9000
# docker run -it dsparseyapi  /bin/bash

# CLIENT (WIP) 
# In another terminal, run the client
# ===============================
# Node JS
# https://github.com/dmansfield/parsey-mcparseface-api/tree/master/parsey_client
# Python client
# https://github.com/dsindex/syntaxnet/blob/master/api/parsey_client.py
#
# docker network inspect bridge // find the ip address eg. "IPv4Address": "172.17.0.2/16"
# TODO - make this work. 
# telnet 0.0.0.0 9000
