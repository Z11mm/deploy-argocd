resource "google_container_cluster" "primary" {
  network = module.vpc_network.network
}