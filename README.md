# For the port changing
# image_no1
<img width="1366" height="768" alt="Screenshot 2026-10-05 185350" src="https://github.com/user-attachments/assets/53a6806b-25dc-4095-b4a0-713f857be7cf" />
# image_no2
<img width="1366" height="768" alt="Screenshot 2026-10-05 185350" src="https://github.com/user-attachments/assets/c1aff465-9fef-4dc6-962b-029230c10684" />
# image_no3
<img width="1366" height="768" alt="Screenshot 2026-10-05 185428" src="https://github.com/user-attachments/assets/b81ad791-344f-4aa0-a685-133573b462c4" />
# image_no4
<img width="1366" height="768" alt="Screenshot 2026-10-05 185454" src="https://github.com/user-attachments/assets/4baf047a-c51a-4ae3-865b-482d13815225" />
# Deployment.yaml
<img width="1366" height="768" alt="Screenshot 2026-10-05 185518" src="https://github.com/user-attachments/assets/a2f67a45-8725-4af3-ac00-1a71bb19ab65" />
# Service.yaml
<img width="1366" height="768" alt="Screenshot 2026-10-05 185546" src="https://github.com/user-attachments/assets/ed77ed56-5d5b-42fb-8369-d922d5b123d7" />
# Entrypoint.sh
<img width="1366" height="768" alt="Screenshot 2026-10-05 185717" src="https://github.com/user-attachments/assets/5d24ebb6-1e41-4d7a-ac8a-f43b5816bd4e" />



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

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

