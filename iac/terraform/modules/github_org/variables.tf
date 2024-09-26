variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
  default     = "tryrocket-cloud"
}
