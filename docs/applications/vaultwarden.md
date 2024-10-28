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

