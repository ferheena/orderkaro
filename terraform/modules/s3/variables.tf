variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "allowed_origins" {
  description = "Allowed origins for CORS"
  type        = string
}

variable "eks_node_role_name" {
  description = "Name of the EKS node IAM role"
  type        = string
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "storage"
}
variable "cloudfront_oai_iam_arn" {
  description = "CloudFront Origin Access Identity ARN"
  type        = string
  
  }
