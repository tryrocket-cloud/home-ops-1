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

###
### Docs
###
resource "cloudflare_pages_project" "docs" {
  account_id        = var.cloudflare_account_id
  name              = "docs"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = "tryrocket-cloud"
      repo_name                     = "docs"
      production_branch             = "main"
      pr_comments_enabled           = false
      deployments_enabled           = true
      production_deployment_enabled = true
    }
  }

  build_config {
    build_command   = "npx vitepress build"
    destination_dir = ".vitepress/dist"
    root_dir        = ""
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


#
# Homer
#
resource "cloudflare_pages_project" "homer" {
  account_id        = var.cloudflare_account_id
  name              = "homer"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = "tryrocket-cloud"
      repo_name                     = "homer"
      production_branch             = "main"
      pr_comments_enabled           = false
      deployments_enabled           = true
      production_deployment_enabled = true
    }
  }

  build_config {
    build_command   = "pnpm build"
    destination_dir = "dist/"
    root_dir        = ""
  }
}

resource "cloudflare_pages_domain" "homer" {
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.homer.name
  domain       = "tryrocket.cloud"
}

resource "cloudflare_record" "homer_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  type    = "CNAME"
  content = cloudflare_pages_project.homer.subdomain
  ttl     = 1
  proxied = true
}
