/*
 * Terraform variable declarations for GCP.
 */

variable "gcp_project_id" {
  description = "GCP Project ID."
  type        = string
}

variable "gcp_region" {
  description = "Default to US East region."
  default     = "us-east1"
}