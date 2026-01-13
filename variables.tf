variable "environment_name" {
  type        = string
  description = "Environment name (dev, staging, prod)"
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment_name)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "primary_location" {
  type        = string
  description = "Azure region for resources"
  default     = "canadacentral"
}

variable "application_name" {
  type        = string
  description = "Application name for resource naming"
  default     = "ghatest"
}

variable "tags" {
  type        = map(string)
  description = "Default tags to apply to all resources"
  default = {
    managed_by = "terraform"
  }
}
