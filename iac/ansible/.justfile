list:
  @just --list

# Hello
vaultwarden-export:
  @ansible-playbook vaultwarden-export-backup.yaml  -e "VAULTWARDEN_SERVER=https://vaultwarden.tryrocket.cloud"

