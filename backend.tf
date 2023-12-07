terraform {
  backend "remote" {
    organization = "ecp-shell-prod"
    workspaces   = "dev-workspace"
  }
}
