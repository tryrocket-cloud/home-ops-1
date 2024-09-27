module "github_org" {
  source = "./modules/github_org"

  github_token = var.github_token
}

module "github_user" {
  source = "./modules/github_user"

  github_token = var.github_token
}

module "cloudflare" {
  source = "./modules/cloudflare"

  cloudflare_api_token = var.cloudflare_api_token
  zone_id              = var.cloudflare_zone_id
  cloudflare_email     = var.cloudflare_email
}
