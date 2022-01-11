# ---------------------
# CREATE VPC NETWORK
# ---------------------

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 3.0"

  project_id   = var.project_id
  network_name = var.network_name
  routing_mode = "REGIONAL"
  mtu          = 1460

  subnets = [
    {
      subnet_name   = "${module.vpc.network_name}-subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "${var.region}"
    }
  ]
}

# ---------------------
# CREATE GKE CLUSTER
# ---------------------
