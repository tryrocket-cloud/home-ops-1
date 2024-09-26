terraform {
  required_providers {
    github = {
      # https://registry.terraform.io/providers/integrations/github/latest
      source  = "integrations/github"
      version = "6.3.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}
