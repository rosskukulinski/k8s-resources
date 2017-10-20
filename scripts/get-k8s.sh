#!/bin/bash
echo "Downloading Kuberentes binaries for $1"
wget --show-progress --https-only --timestamping \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kube-apiserver" \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kube-controller-manager" \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kube-scheduler" \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kubectl" \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kube-proxy" \
  "https://storage.googleapis.com/kubernetes-release/release/$1/bin/linux/amd64/kubelet"

chmod +x kube*