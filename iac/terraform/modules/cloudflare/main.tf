terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.0.0-alpha1"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
  email     = var.cloudflare_email
}

resource "cloudflare_dns_record" "docs_cname" {
  zone_id = var.zone_id
  name    = "docs"
  content = "tryrocket-cloud.github.io"
  type    = "CNAME"
  ttl     = 1
}
