---
outline: deep
---

# Vaultwarden

https://vaultwarden.tryrocket.cloud

## Backup and Restore

### Export

```sh
ansible-playbook vaultwarden-export-backup.yaml  -e "VAULTWARDEN_SERVER=https://vaultwarden.tryrocket.cloud"
# or
ansible-playbook vaultwarden-export-kopia.yaml -e "VAULTWARDEN_SERVER=https://vaultwarden.tryrocket.cloud"
ansible-playbook vaultwarden-export-restic.yaml -e "VAULTWARDEN_SERVER=https://vaultwarden.tryrocket.cloud"
```

Type: `critical`

Backups:

- export
- data
