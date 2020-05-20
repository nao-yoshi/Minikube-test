#!/bin/bash

## kubectl Installation
echo "========================================="
echo "Start kubectl installation ..........    "
echo "========================================="
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
echo "========================================="
echo "kubectl version"
/usr/local/bin/kubectl version --client
echo "========================================="

## bash-completion Installation
echo "========================================="
echo "Start bash-completion installation ......"
echo "========================================="
sudo yum install -y bash-completion
echo "========================================="

## minikube Installation
echo "========================================="
echo "Start minikube Installation"
echo "========================================="
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
echo "========================================="
echo "minimube version"
/usr/local/bin/minikube version
echo "========================================="
rm minikube
sudo yum install -y socat ebtables
echo "========================================="
