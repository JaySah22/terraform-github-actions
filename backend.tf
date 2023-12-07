terraform {
  backend "remote" {
    organization = "ecp-shell-prod"
    workspace = "dev-workspace"
  }
}
