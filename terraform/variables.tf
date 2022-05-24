# ------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ------------------------------------------------------------

variable "project_id" {
  description = "The id of the target project to provision infrastructure"
  type        = string
}

variable "gcp_credentials" {
  description = "The path for the service account private key file"
  type        = string
}

variable "region" {
  description = "The default region for the project"
  type        = string
}

variable "network" {
  description = "The name of the vpc network"
  type        = string
}

variable "environment" {
  description = "The current working environment"
  type        = string
}
