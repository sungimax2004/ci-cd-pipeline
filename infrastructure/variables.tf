variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "devops-demo"
}

variable "github_owner" {
  description = "GitHub owner/user/org"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "Branch to build from"
  type        = string
  default     = "main"
}

variable "github_oauth_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}
