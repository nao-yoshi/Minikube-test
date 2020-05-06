#!/bin/bash

#####################################
## Modify hostname or IP for URL of Frontend-GUI listed below.
host=localhost

## Modify port number for URL of Frontend-GUI.
ext=8000

## Modify port number for Frontend container.
cont=80

## Modify number of port for the registry container.
port=5000
#####################################


## Docker Registry Installation
docker run -d -p $port:5000 --restart=always --name registry registry:2

## Docker Registry Frontend Installation
docker run -d \
  -e ENV_DOCKER_REGISTRY_HOST=$host \
  -e ENV_DOCKER_REGISTRY_PORT=$port \
  -p $ext:$cont \
  --name registry_frontend \
  -h registry_frontend \
  konradkleine/docker-registry-frontend:v2
docker ps
echo "========================================================="
echo "URL of the registry page >>> http://$host:$ext/home"
echo "========================================================="

