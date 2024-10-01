---
outline: deep
---

# Containerization

- **Docker**: For running lightweight containers for services like Nextcloud, Vaultwarden.
- **Kubernetes (K3s)**:
  - A lightweight Kubernetes distribution (K3s) is deployed to manage containerized applications across multiple nodes in the homelab.
  - **Cluster Setup**:
    - **Master Nodes**: 1 master node for managing the control plane.
    - **Worker Nodes**: 2 worker nodes for running applications.
  - **Roles**:
    - **Master Node**: Manages the Kubernetes API and cluster orchestration.
    - **Worker Nodes**: Execute containerized workloads across services like monitoring, home automation, and web applications.
  - **Applications Deployed on Kubernetes**:
    - **Nextcloud**: Self-hosted cloud storage.
    - **Grafana and Prometheus**: Monitoring and metrics.
    - **Plex**: Media server.
  - **Storage**: Persistent volumes managed using NFS or local storage.
  - **Networking**: Flannel CNI (Container Network Interface) for internal cluster

# 6. Orchestration and Kubernetes Cluster

## 6.1 Kubernetes Cluster Overview
- A **Kubernetes cluster** is used to orchestrate and manage containerized workloads across multiple nodes in the homelab. The cluster helps with scaling, fault tolerance, and simplified deployment of services.

### 6.2 Cluster Setup
- **Kubernetes Distribution**: K3s (lightweight Kubernetes)
- **Number of Nodes**:
  - **Master Nodes**: 1 (control plane)
  - **Worker Nodes**: 2 (compute resources)
- **Networking**:
  - **CNI Plugin**: Flannel for internal cluster networking.
  - **Service Networking**: ClusterIP for internal services, NodePort for exposing services externally.

### 6.3 Applications Deployed on Kubernetes
- **Nextcloud**: Self-hosted cloud storage solution for files and documents.
- **Home Assistant**: Home automation system managing smart home devices.
- **Vaultwarden**: Self-hosted password manager.
- **Grafana and Prometheus**: Monitoring and metrics collection.
- **Plex**: Media server for managing and streaming media.

### 6.4 Storage and Persistent Volumes
- **Storage**: Persistent storage managed via NFS or hostPath.
- **Persistent Volume Claims**: Used to allocate persistent storage to services that require data persistence (e.g., Nextcloud, databases).

### 6.5 CI/CD Integration
- The Kubernetes cluster integrates with **GitLab CI** for continuous deployment and management of applications within the cluster.
- **Helm**: Used for managing Kubernetes applications through reusable Helm charts.

### 6.6 Cluster Management Tools
- **K9s**: Terminal-based UI for managing Kubernetes clusters.
- **kubectl**: Command-line tool for interacting with the Kubernetes API.
- **Rancher** (optional): Web-based GUI for managing multiple Kubernetes clusters.

## Kubernetes cluster

## Docker

## Podman
