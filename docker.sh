#!/bin/bash

## Install Docker ##
echo "========================================="
echo "Start Docker Installation"
echo "========================================="
sudo yum -y remove docker \
  docker-client \
  docker-client-latest \
  docker-common docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-selinux \
  docker-engine-selinux \
  docker-engine \

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum -y install docker-ce
systemctl start docker
systemctl enable docker
sudo usermod -aG docker vagrant
systemctl restart docker
docker version
echo "========================================="
