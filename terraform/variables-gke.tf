# ------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ------------------------------------------------------------

variable "cluster_name" {
  description = "The name of the gke cluster"
  type        = string
}

variable "min_count" {
  description = "The minimum number of nodes in the node pool"
  type        = number
}

variable "max_count" {
  description = "The maximum number of nodes in the node pool"
  type        = number
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
}

variable "ip_range_pods" {
  type        = string
  description = "The _name_ of the secondary subnet ip range to use for pods"
}

variable "ip_range_services" {
  type        = string
  description = "The _name_ of the secondary subnet range to use for services"
}