variable "app_name" {
  type        = string
  description = "Name of the application being deployed."
}

variable "environment" {
  type        = string
  description = "Deployment environment name."
}

variable "replica_count" {
  type        = number
  description = "Number of replicas to run."
  default     = 0
}
