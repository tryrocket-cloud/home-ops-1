---
outline: deep
---

# Applications

## Docs

Docs ([Vitepress](https://vitepress.dev/)) hosted at [docs.tryrocket.cloud](https://docs.tryrocket.cloud) on Cloudflare Pages. This documentation site provides everything you need to know about using, deploying, and contributing to the application.

The source code can be found at `pages/docs/`

## Personal Dashboard

Personal Dashboard ([Homer](https://github.com/bastienwirtz/homer)) hosted at [tryrocket.cloud](https://tryrocket.cloud) and provides a customizable homepage for organizing and accessing frequently used services and websites.

[config.yml](../homer/public/assets/config.yml)

The source code can be found at `pages/homer/`

### Setup with Git Subtree

```sh
# home-op/
git remote add -f homer https://github.com/bastienwirtz/homer.git
git subtree add --prefix=pages/homer homer main --squash
```

### Update

```sh
git subtree pull --prefix=pages/homer homer main --squash
```

## Statuspage

[Statuspage](https://upptime.js.org/) is status page, hosted at [status.tryrocket.cloud](https://status.tryrocket.cloud) on GitHub Pages. Upptime is an open-source uptime monitor and status page powered by GitHub Actions, GitHub Pages, and GitHub Issues. It automates website monitoring and generates a status page directly from your [GitHub](https://github.com/tryrocket-cloud/upptime) repository.

## Vault <Badge type="danger" text="SL2" />

**HashiCorp Vault**, hosted at [vault.tryrocket.cloud](https://vault.tryrocket.cloud) and deployed on a Kubernetes Cluster. Vault is a tool for securely storing and accessing secrets, such as API keys, passwords, and certificates. The **Vault** data belongs to the [SL2](/security-layers#SL2).

### Deployment

The Vault deployment is managed using the official [Helm chart](https://helm.releases.hashicorp.com). Vault will be deployed and managed via an ArgoCD ApplicationSet.

- [Helm Chart](https://github.com/hashicorp/vault-helm)
- [Default values](https://github.com/hashicorp/vault-helm/blob/main/values.yaml)
- [Documentation](https://developer.hashicorp.com/vault/docs/platform/k8s/helm)

### Backup

#### Create

::: info
To export data in JSON format, [Medusa](https://github.com/jonasvinther/medusa) is utilized.
:::

| **Backup Type**                                 | **Command**                         |
|-------------------------------------------------|-------------------------------------|
| [Export](/backup-general#export)                | `j iac ansible vault-export-backup` |
| [Data](/backup-general#data)                    | `j iac ansible vault-data-backup`   |
| [CSI Snapshots](/backup-general#csi-snapshots)  | `j iac ansible vault-csi-snapshot`  |
| [CSI Backups](/backup-general#csi-backups)      | `j iac ansible vault-csi-backup`    |

**Full Backup**

```sh
j iac ansible vault-backup
```

#### Restore

# Links

- [Official HashiCorp Vault Website](https://www.hashicorp.com/products/vault)
- [Vault GitHub Repository](https://github.com/hashicorp/vault)
- [Vault Documentation](https://www.vaultproject.io/docs)

## Vaultwarden <Badge type="danger" text="SL2" />

[Vaultwarden](https://github.com/dani-garcia/vaultwarden) is a lightweight alternative to [Bitwarden](https://bitwarden.com), hosted at [vaultwarden.tryrocket.cloud](https://vaultwarden.tryrocket.cloud) on a Kubernetes Cluster. The Vaultwarden data is [SL2](/security-layers#SL2).

### Deployment

### Backup

Vaultwarden is backed up on a **daily basis** at `30 0 * * *`.

::: info
To export data in JSON format, [Bitwarden CLI](https://github.com/bitwarden/clients) is utilized. See more in the Ansible [export-vaultwarden-vault.yaml](../../iac/ansible/export-vaultwarden-vault.yaml) playbook
:::

#### Backup Contents

- **Database**: The primary data store for Vaultwarden, including user credentials and secrets.
- **Configuration Files**: All configuration settings related to Vaultwarden deployment.
- **Attachments**: Any user-uploaded attachments stored within Vaultwarden.

#### Backup Location

The backups are securely stored in a location that ensures quick recovery in case of data loss or corruption. These backups are also periodically checked for integrity.

#### Restoring Backups

In case of a failure or accidental data loss, the backup can be restored manually or via the automated restore process, ensuring minimal downtime for users.

#### Export

```sh
j iac ansible vaultwarden-export
```

Type: `critical`

Backups:

- export
- data

### Links

- [GitHub](https://github.com/dani-garcia/vaultwarden)
- [Documentation](https://github.com/dani-garcia/vaultwarden/wiki)
- [Bitwarden CLI](https://github.com/bitwarden/cli)
- [DockerHub](https://hub.docker.com/r/vaultwarden/server)
- [r/Vaultwarden](https://www.reddit.com/r/Vaultwarden/)

## Nextcloud
