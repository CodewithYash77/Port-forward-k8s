# Port-forward-k8s

# Kubernetes Pod IP Load Balancing with Nginx & NodePort

This project demonstrates how to deploy an Nginx web application on a Kubernetes cluster with **4 replicas**. Traffic is load-balanced across all pods using a **NodePort Service**, displaying a unique **Pod IP address** on every page refresh.

---

## 🏗️ Architecture Overview
1. **Deployment**: Manages 4 replicas of the Nginx container.
2. **Kubernetes Downward API**: Injects the dynamic `status.podIP` directly into the container environment.
3. **NodePort Service**: Exposes the application externally on port `30080`.
4. **Load Balancing**: Distributes incoming HTTP requests among all active Pod IPs.

---

## 🛠️ Prerequisites
- Docker Installed
- Docker Hub Account
- Kubernetes Cluster / [Killercoda Playground](https://killercoda.com/)
- `kubectl` CLI installed

---

## 📁 Repository Structure
```text
.
├── deployment.yaml   # Kubernetes Deployment manifest (4 replicas + Pod IP injection)
├── service.yaml      # Kubernetes NodePort Service manifest
├── commands.sh       # Execution script for quick setup
└── README.md         # Project documentation
