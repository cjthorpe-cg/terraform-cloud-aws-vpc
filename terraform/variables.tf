variable "aws_access_key_id" {
  description = "AWS Access Key ID."
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key."
  type        = string
}

variable "category" {
  default     = "terraform"
  description = "Variable type in Terraform Cloud. "
  type        = string
}

variable "organization" {
  default     = "thorpecorp"
  description = "The Terraform Cloud Organization under which the workspace will be created in."
  type        = string
}

variable "oauth_token" {
  default     = "ot-mCnao9PVUJPLbxSS"
  description = "OAuth token for the current VCS."
  type        = string
}

variable "private_subnet_cidr" {
  default     = ["10.0.2.0/24", "10.0.3.0/24"]
  description = "Private subnet CIDR range in AWS."
  type        = list
}

variable "public_subnet_cidr" {
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
  description = "Public subnet CIDR range in AWS."
  type        = list
}

variable "region" {
  default     = "eu-west-2"
  description = "AWS Region."
  type        = string
}

variable "vcs_repo_name" {
  default     = "terraform-module-aws-vpc"
  description = "Name of the repo housing the infrastructure code to be provisioned."
  type        = string
}

variable "vcs_repo_owner" {
  default     = "cjthorpe"
  description = "The owner of the VCS account housing the infrastructure code to be provisioned."
  type        = string
}

variable "workspace_name_prod" {
  default     = "terraform-module-aws-vpc-prod"
  description = "The Terraform Cloud workspace under which the variables will be created in."
  type        = string
}