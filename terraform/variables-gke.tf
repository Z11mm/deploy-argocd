# ------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ------------------------------------------------------------

variable "cluster_name" {
  default     = "boutique-cluster"
  description = "The name of the gke cluster"
  type        = string
}

variable "min_count" {
  default     = 1
  description = "The minimum number of nodes in the node pool"
  type        = number
}

variable "max_count" {
  default     = 2
  description = "The maximum number of nodes in the node pool"
  type        = number
}

variable "project" {
  default     = "deimos-gcp-explore-01-333007"
  description = "The project ID where all resources will be launched."
  type        = string
}

variable "ip_range_pods" {
  default = "us-west1-01-gke-01-pods"
  type        = string
  description = "The _name_ of the secondary subnet ip range to use for pods"
}

variable "ip_range_services" {
  default = "us-west1-01-gke-01-services"
  type        = string
  description = "The _name_ of the secondary subnet range to use for services"
}