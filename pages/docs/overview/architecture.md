---
outline: deep
---

# Architecture

```mermaid
architecture-beta
    group k8s(cloud)[k8s cluster]

    service node1(server)[OptiPlex 3080] in k8s
    service disk1(disk)[Storage] in k8s
    disk1:T -- B:node1

    service node2(server)[OptiPlex 3080] in k8s
    service disk2(disk)[Storage] in k8s
    disk2:T -- B:node2

    node1:R -- L:node2

    group truenas(cloud)[TrueNas]
    group raidz2(disk)[raidz2] in truenas

    service node3(server)[h610i] in truenas

    service hdd1(disk)[Storage] in raidz2
    service hdd2(disk)[Storage] in raidz2
    service hdd3(disk)[Storage] in raidz2
    service hdd4(disk)[Storage] in raidz2
s
    node3:B -- T:hdd1
    node3:B -- T:hdd2
    node3:B -- T:hdd3
    node3:B -- T:hdd4
```


## Workload types

| **Type** | **Description** |
|----------|-----------------|
| `low` | 0W - 15W |
| `medium` | 15W - 50W |
| `high` | from 50W |

## Network Topology
The homelab is organized with a segmented network topology to isolate different types of traffic and services. This helps improve security, performance, and management. Key components of the network topology include:

- **VLANs**: Different VLANs are used for separating services such as:
  - **Management** (for administrative access to servers and networking gear).
  - **Services** (for internal services such as file storage, media servers, etc.).
  - **IoT Devices** (to separate less-secure devices like smart home gadgets).
  - **Guest Network** (for isolated network access without touching sensitive systems).

- **Router and Firewall**:
  - **Router**: Central router that connects all devices and handles traffic between VLANs and the internet.
  - **Firewall**: Security rules enforced by either a dedicated hardware firewall or a software firewall on the router. These rules govern what devices and VLANs can communicate with each other.

- **VPN Access**:
  - VPN (e.g., **WireGuard** or **OpenVPN**) is used for secure remote access to the homelab from external networks, providing encrypted traffic for managing the homelab remotely.

### Network Diagram (optional)
A visual diagram (e.g., created with Lucidchart, draw.io, or any network diagram tool) helps to visualize how devices are interconnected across different VLANs, switches, routers, and external connections.

## Hardware Components
The homelab consists of various hardware components that form the backbone of its infrastructure. Below is a high-level overview:

### Servers
- **Primary Server**:
  - Model: *Dell PowerEdge T340*
  - CPU: Intel Xeon E-2224
  - RAM: 32 GB ECC RAM
  - Storage: 2x 1TB SSD (RAID 1) for the OS, 4x 4TB HDD (RAID 5) for data
  - Role: Hypervisor (e.g., **Proxmox**, **ESXi**) for running virtual machines and containers.

- **Secondary Server** (Optional):
  - Model: *Intel NUC 10*
  - CPU: Intel i7-10710U
  - RAM: 16 GB
  - Storage: 512GB NVMe SSD
  - Role: Backup server and test environment for lightweight tasks.

### Networking Gear
- **Router**: *Ubiquiti EdgeRouter 4* (or similar).
- **Switch**: *Ubiquiti UniFi 16-port Managed Switch*.
- **Access Points**: *UniFi UAP-AC-PRO* for wireless access.
- **Firewall**: Dedicated firewall using **pfSense** or **OPNsense**.

### Storage
- **NAS (Network Attached Storage)**:
  - **TrueNAS Core** running on a dedicated server.
  - Disks: 4x 6TB HDDs (RAID-Z for redundancy).
  - Shared via SMB and NFS for file access across the homelab.

- **Backup Storage**:
  - External USB drives or cloud storage (e.g., **Backblaze B2**, **Storj**) for offsite backups.



## Software Stack
The homelab runs a diverse software stack to manage services, automation, and networking. Below are key components:

### Virtualization and Containers
- **Hypervisor**: *Proxmox VE* (or **VMware ESXi**).
- **Containers**:
  - *Docker* for running containerized services (e.g., **Nextcloud**, **Vaultwarden**).
  - Kubernetes (Optional) for orchestrating containers at scale.

### Services
- **Self-Hosted Services**:
  - **Nextcloud** for file syncing and sharing.
  - **Vaultwarden** for password management.
  - **Plex** or **Jellyfin** for media streaming.
  - **Home Assistant** for home automation.
  - **Grafana** and **Prometheus** for monitoring and metrics collection.

- **Backup Tools**:
  - **Restic** or **Kopia** for automated backups.
  - **Duplicati** for encrypted, scheduled cloud backups.

- **Monitoring Tools**:
  - **Netdata** for system performance monitoring.
  - **Uptime Kuma** for tracking service uptime.

### Security and Network
- **Firewall**: *pfSense* or *OPNsense* managing network security rules.
- **VPN**: *WireGuard* for secure remote access.
- **Let's Encrypt**: SSL/TLS certificates for securing internal and external services.
- **Ansible**: Used for automation and configuration management across systems.

### Automation and Orchestration
- **Ansible**: To automate system provisioning and configuration.
- **CI/CD**: *GitLab CI* for deploying applications and managing infrastructure.
- **Docker Compose**: For orchestrating multi-container setups.

## Summary
The homelab is designed with scalability, security, and flexibility in mind. It consists of a structured network with VLANs, reliable hardware for virtualization and storage, and a robust software stack that supports everything from self-hosted services to automation and backups.
