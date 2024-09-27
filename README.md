# home-ops

<div align="center">

<a href="https://docs.tryrocket.cloud">Dashboard</a> •
<a href="https://docs.tryrocket.cloud">Docs</a>


<img src="https://raw.githubusercontent.com/auricom/home-ops/main/docs/src/assets/logo.png" align="center" width="144px" height="144px"/>

## My home Kubernetes cluster :sailboat:

... managed with ArgoCD and Renovate :robot:
</div>


<div align="center">

[![Discord](https://img.shields.io/discord/673534664354430999?style=for-the-badge&label&logo=discord&logoColor=white&color=blue)](https://discord.gg/k8s-at-home)
[![Kubernetes](https://img.shields.io/badge/v1.30-blue?style=for-the-badge&logo=kubernetes&logoColor=white)](https://talos.dev/)
[![Renovate](https://img.shields.io/github/actions/workflow/status/auricom/home-ops/renovate.yaml?branch=main&label=&logo=renovatebot&style=for-the-badge&color=blue)](https://github.com/auricom/home-ops/actions/workflows/renovate.yaml)

</div>

[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)

---

## 📖 Overview

This is a mono repository for my home infrastructure and Kubernetes cluster. I try to adhere to Infrastructure as Code (IaC) and GitOps practices using tools like [Ansible](https://www.ansible.com/), [Terraform](https://www.terraform.io/), [Kubernetes](https://kubernetes.io/), [Argo CD](https://github.com/argoproj/argo-cd), [Renovate](https://github.com/renovatebot/renovate), and [GitHub Actions](https://github.com/features/actions).

---

## ⛵ Kubernetes

My Kubernetes cluster is deploy with [Talos Linux](https://www.talos.dev). This is a semi-hyper-converged cluster, workloads and block storage are sharing the same available resources on my nodes while I have a separate server with ZFS for NFS/SMB shares and S3 buckets, bulk file storage and backups.

### Core Components

...tbd

### GitOps

[Argo CD](https://github.com/argoproj/argo-cd) watches the clusters in my [k8s](./k8s/) folder and makes the changes to my clusters based on the state of my Git repository.

The way [Argo CD](https://github.com/argoproj/argo-cd) works ...tbd

[Renovate](https://github.com/renovatebot/renovate) watches my **entire** repository looking for dependency updates, when they are found a PR is automatically created. When some PRs are merged Flux applies the changes to my cluster.

---

## ☁️ Cloud Dependencies

While most of my infrastructure and workloads are self-hosted I do rely upon the cloud for certain key parts of my setup. This saves me from having to worry about three things. (1) Dealing with chicken/egg scenarios, (2) services I critically need whether my cluster is online or not and (3) The "hit by a bus factor" - what happens to critical apps (e.g. Email, Password Manager, Photos) that my family relies on when I no longer around.


| Service                                         | Use                                                               | Cost           |
|-------------------------------------------------|-------------------------------------------------------------------|----------------|
| [Cloudflare](https://www.cloudflare.com/)       | Domain         | ~$12/yr        |
| [GitHub](https://github.com/)                   | Hosting this repository and continuous integration/deployments    | Free           |
| [IONOS Cloud](https://ionos.com/)       | S3         | ~$12/yr        |
| [intercolo](https://intercolo.com/)       | S3         | ~$12/yr        |
|                                                 |                                                                   | Total: ~$1/mo |

---

## 🔧 Hardware

<details>
  <summary>Click here to see my server rack</summary>

  <img src="https://raw.githubusercontent.com/onedr0p/home-ops/main/docs/src/assets/rack.png" align="center" width="200px" alt="dns"/>
</details>

| Device                      | Count | OS Disk Size | Data Disk Size               | Ram  | Operating System | Purpose                 |
|-----------------------------|-------|--------------|------------------------------|------|------------------|-------------------------|
| Intel NUC8i5BEH             | 3     | 1TB SSD      | 1TB NVMe (rook-ceph)         | 64GB | Talos            | Kubernetes Controllers  |
| Intel NUC8i7BEH             | 3     | 1TB SSD      | 1TB NVMe (rook-ceph)         | 64GB | Talos            | Kubernetes Workers      |
| PowerEdge T340              | 1     | 2TB SSD      |                              | 64GB | Ubuntu 22.04     | NFS + Backup Server     |
| Lenovo SA120                | 1     | -            | 10x22TB ZFS (mirrored vdevs) | -    | -                | DAS                     |
| PiKVM (RasPi 4)             | 1     | 64GB (SD)    | -                            | 4GB  | PiKVM (Arch)     | KVM                     |
| TESmart 8 Port KVM Switch   | 1     | -            | -                            | -    | -                | Network KVM (for PiKVM) |
| UniFi UDMP Max              | 1     | -            | 2x12TB HDD                   | -    | -                | Router & NVR            |
| UniFi US-16-XG              | 1     | -            | -                            | -    | -                | 10Gb Core Switch        |
| UniFi USW-Enterprise-24-PoE | 1     | -            | -                            | -    | -                | 2.5Gb PoE Switch        |
| UniFi USP PDU Pro           | 1     | -            | -                            | -    | -                | PDU                     |
| APC SMT1500RM2U             | 1     | -            | -                            | -    | -                | UPS                     |

---

## 🤝 Gratitude and Thanks

Thanks to all the people who donate their time to the [Home Operations](https://discord.gg/home-operations) Discord community. Be sure to check out [kubesearch.dev](https://kubesearch.dev/) for ideas on how to deploy applications or get ideas on what you could deploy.
