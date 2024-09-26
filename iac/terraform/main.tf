module "github_org" {
  source = "./modules/github_org"

  github_token = var.github_token
}

module "github_user" {
  source = "./modules/github_user"

  github_token = var.github_token
}
