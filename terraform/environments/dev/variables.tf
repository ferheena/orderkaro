variable "project_name" {
  description = "Name of the project"
  type        = string
  default = "orderkaro"
}

variable "environment" {
  description = "Environment name)"
  type        = string
  default = "dev"
}

variable "database_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "allowed_origins" {
  description = "Allowed origins for CORS"
  type        = string
  default     = "*"  # Change this to specific domains in production
}

