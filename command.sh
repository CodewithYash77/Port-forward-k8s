#!/bin/bash

# ==========================================
# IMPORTANT: Replace with your Docker Hub Username
DOCKER_USER="<your-dockerhub-username>"
IMAGE_NAME="nginx-pod-ip"
TAG="v1"
# ==========================================

echo "========================================="
echo " 1. Docker Build & Push to Docker Hub "
echo "========================================="

# Docker Hub Login
docker login

# Build Docker Image
echo "Building Docker Image..."
docker build -t $DOCKER_USER/$IMAGE_NAME:$TAG .

# Push Docker Image
echo "Pushing Image to Docker Hub..."
docker push $DOCKER_USER/$IMAGE_NAME:$TAG

echo "========================================="
echo " 2. Deploying to Kubernetes Cluster "
echo "========================================="

# Apply Manifests
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Wait for pods
echo "Waiting for Pods to start..."
sleep 5
kubectl get pods -o wide

echo "========================================="
echo " 3. Testing Load Balancing via NodePort "
echo "========================================="

for i in {1..4}
do
   echo -n "Request $i: "
   curl -s http://localhost:30080
done

echo ""
echo "Setup Complete! Refresh to see the Pod IP change."
