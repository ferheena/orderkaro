variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "image_retention_count" {
  description = "Number of images to keep in ECR"
  type        = number
  default     = 30
}

variable "eks_node_role_arn" {
  description = "ARN of the EKS node role"
  type        = string
}
