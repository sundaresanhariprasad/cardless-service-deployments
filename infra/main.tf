terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "${var.project}"
  region  = "${var.primary_region}"
}

resource "google_container_cluster" "cluster" {
  description        = "Carless"
  name               = "${var.cluster_name}"
  location           = "${var.primary_zone}"
  initial_node_count = "${var.initial_node_count}"
  logging_service    = "none"
  monitoring_service = "none"

  node_config {
    preemptible  = "${var.preemptible_vm}"
    machine_type = "${var.machine_type}"
    
  }

  timeouts {
    create = "180m"
    delete = "180m"
    update = "180m"
  }
}