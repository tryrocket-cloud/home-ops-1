resource "github_repository" "home_ops" {
  name        = "home-ops"
  description = "My home Kubernetes (Talos Linux) cluster managed by GitOps (ArgoCD) and Renovate"
  visibility  = "public"

  has_issues   = true
  has_wiki     = true
  has_projects = true

  allow_squash_merge = true
  allow_merge_commit = false
  allow_rebase_merge = true

  topics = ["kubernetes", "talos", "gitops", "argocd", "iac", "terraform", "ansible", "k8s-at-home", "home-ops"]
}
