terraform {
  required_version = ">= 0.13.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "< 5.0, >= 2.12"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "< 5.0, >= 3.45"
    }
  }

  backend "gcs" {
    credentials = "./key.json"
    # credentials = file(var.gcp_credentials)
    bucket      = "backend-bucket-tf"
  }
}

provider "google" {
  credentials = "${var.gcp_credentials}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

provider "google-beta" {
  credentials = "${var.gcp_credentials}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}
