#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=maltekreeti/udacity-devops-nano

# Step 2
# Run the Docker Hub container with kubernetes
#docker run -p 8000:80 regression:v1.0
kubectl run predict-deploy --image=regression:v1.0 --port=80 --image-pull-policy=Never


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward predict-deploy  8000:80

