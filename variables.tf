# ------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ------------------------------------------------------------

variable "project_id" {
  description = "The id of the target project to provision infrastructure"
  type = string
}

variable "gcp_credentials" {
  description = "The path for the service account private key file"
  type = string
}