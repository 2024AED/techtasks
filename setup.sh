#!/bin/bash

# Create a Namespace
kubectl create namespace devops-test

# Create a Deployment
kubectl create deployment nginx --image=nginx --namespace=devops-test

# Expose the Deployment as a Service
kubectl expose deployment nginx --port=80 --type=NodePort --namespace=devops-test
