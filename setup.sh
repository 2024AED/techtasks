#!/bin/bash

# install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" > /dev/null
unzip awscliv2.zip > /dev/null
sudo ./aws/install

# Create a Namespace
kubectl create namespace devops-test

# Create a Deployment
kubectl create deployment nginx --image=nginx --namespace=devops-test

# Expose the Deployment as a Service
kubectl expose deployment nginx --port=80 --type=NodePort --namespace=devops-test
