#!/bin/bash

echo "========================================="
echo "Start Helm Installation ....."
echo "========================================="
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
ls -a /usr/local/bin/* |grep helm
rm get_helm.sh
echo "========================================="
