// Define resource for the production workspace.

resource "tfe_workspace" "production" {
  name         = var.workspace_name_prod
  organization = var.organization

  vcs_repo {
    identifier     = "${var.vcs_repo_owner}/${var.vcs_repo_name}"
    oauth_token_id = var.oauth_token
  }
}

// Define variables for the workspace.

resource "tfe_variable" "aws_access_key_id" {
  category     = "env"
  key          = "AWS_ACCESS_KEY_ID"
  sensitive    = true
  value        = var.aws_access_key_id
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "aws_secret_access_key" {
  category     = "env"
  key          = "AWS_SECRET_ACCESS_KEY"
  sensitive    = true
  value        = var.aws_secret_access_key
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "owner" {
  category     = var.category
  key          = "owner"
  value        = var.organization
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "prefix" {
  category     = var.category
  key          = "prefix"
  value        = "vpc"
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "private_subnet_cidr" {
  category     = var.category
  hcl          = true
  key          = "private_subnet_cidr"
  value        = "[\"10.0.2.0/24\", \"10.0.3.0/24\"]"
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "profile" {
  category     = var.category
  key          = "profile"
  value        = var.organization
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "public_subnet_cidr" {
  category     = var.category
  hcl          = true
  key          = "public_subnet_cidr"
  value        = "[\"10.0.0.0/24\",\"10.0.1.0/24\"]"
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "region" {
  category     = var.category
  key          = "region"
  value        = var.region
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "vpc_cidr" {
  category     = var.category
  key          = "vpc_cidr"
  value        = "10.0.0.0/16"
  workspace_id = tfe_workspace.production.id
}

resource "tfe_variable" "workspace" {
  category     = var.category
  key          = "workspace"
  value        = "production"
  workspace_id = tfe_workspace.production.id
}
