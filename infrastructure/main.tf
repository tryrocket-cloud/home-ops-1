module "github_repo" {
  source = "./modules/github"

  github_token = var.github_token
  github_owner = var.github_owner
}
