terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

provider "github" {
  token = var.github_token # If you need to pass a token inside the module
  owner = var.github_owner
}

# Cannot set type SigningKey on resource github_user_ssh_key
# resource "github_user_ssh_key" "signing_key" {
#   title = "Signing Key"
#   key   = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOy4aywOdg9/3zmeoliY9GilB2yAulH0yg46GiuHJu0V"
# }
