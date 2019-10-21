# terraform-cloud-aws-vpc

Creates Terraform Cloud configuration for the [AWS VPC module](https://github.com/cjthorpe/terraform-module-aws-vpc).

**N.B.** - requires Terraform v0.12.

## Prerequisites

Requires that a [Terraform Cloud](app.terraform.io) account and an existing organisation already be created.

The account must be pre-configured to be able to access a VCS via OAUTH, as this is required when creating the Terraform Cloud **workspace**:

```bash
resource "tfe_workspace" "production" {
  name         = var.workspace_name_prod
  organization = var.organization

  vcs_repo {
    identifier     = "${var.vcs_repo_owner}/${var.vcs_repo_name}"
    oauth_token_id = var.oauth_token
  }
}
```

## Deployment

```bash
$ cd terraform
```

Initialise the module(s).

```bash
$ terraform init
```

Check for changes/errors.

```bash
$ terraform plan
```

Execute the deployment.

```bash
$ terraform apply
```
