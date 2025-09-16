variable "environment" {
  description = "Deployment environment (dev or prod)"
  type        = string
}

variable "region" {
  description = "Cloud region (only for prod/EKS)"
  type        = string
  default     = "eu-west-1"
}
