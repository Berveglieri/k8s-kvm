#!/bin/bash

swapoff -a
kubeadm init --pod-network-cidr=192.168.0.0/16
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f https://docs.projectcalico.org/manifests/custom-resources.yaml
