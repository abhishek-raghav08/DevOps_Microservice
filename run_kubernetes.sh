#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=abhishekraghav08/apip
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes
#minikube kubectl -- run apip\
#    -- generator=apip/v1\
#    -- image=$dockerpath\
#    -- port=80 -- labels app=apip
minikube kubectl -- create deployment apip --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
minikube kubectl get pods

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward deployment/apip 8000:80

