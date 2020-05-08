#!/bin/bash

## Set timezone
echo "========================================="
echo "set timezone as JST"
echo "========================================="
sudo cp /usr/share/zoneinfo/Japan /etc/localtime

## Update
echo "========================================="
echo "Updating.........."
echo "========================================="
sudo yum install -y update

## Disable firewalld
echo "========================================="
echo "Disable firewall"
echo "========================================="
sudo systemctl stop firewalld
sudo systemctl disable firewalld

## Install git
echo "========================================="
echo "Start git Installation"
echo "========================================="
sudo yum install -y git
echo "========================================="
