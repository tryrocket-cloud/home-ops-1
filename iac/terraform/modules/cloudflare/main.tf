terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.42.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_pages_project" "docs" {
  account_id        = var.cloudflare_account_id
  name              = "docs"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = "tryrocket-cloud"
      repo_name                     = "home-ops"
      production_branch             = "main"
      pr_comments_enabled           = false
      deployments_enabled           = true
      production_deployment_enabled = true
    }
  }

  build_config {
    build_command   = "npx vitepress build"
    destination_dir = ".vitepress/dist"
    root_dir        = "/pages/docs"
  }
}

resource "cloudflare_pages_domain" "docs" {
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.docs.name
  domain       = "docs.tryrocket.cloud"
}

resource "cloudflare_record" "docs_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "docs"
  type    = "CNAME"
  content = cloudflare_pages_project.docs.subdomain
  ttl     = 1
  proxied = true
}
