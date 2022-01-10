resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

#   tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}