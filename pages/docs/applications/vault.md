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
