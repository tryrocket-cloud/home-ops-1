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

resource "github_repository" "home_ops" {
  name             = "home-ops"
  description      = "My home Kubernetes (Talos Linux) cluster managed by GitOps (ArgoCD) and Renovate"
  visibility       = "public"
  homepage_url     = "https://tryrocket.cloud"
  license_template = "wtfpl"

  pages {
    source {
      branch = "main"
      path   = "/docs"
    }
    cname      = "docs.tryrocket.cloud"
    build_type = "workflow"
  }

  has_issues   = true
  has_wiki     = true
  has_projects = false

  allow_squash_merge = true
  allow_merge_commit = false
  allow_rebase_merge = true

  topics = ["kubernetes", "talos", "gitops", "argocd", "iac", "terraform", "ansible", "k8s-at-home", "home-ops"]
}
