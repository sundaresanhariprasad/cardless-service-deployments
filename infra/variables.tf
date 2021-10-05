variable "project" {
  description = "The Google Cloud Platform project ID to target."
  default     = "lbgretailpocs"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  default     = "cardless-gke-cluster"
}

variable "initial_node_count" {
  description = "Default amount of nodes per zone that will be launched"
  default     = 1
}

variable "primary_region" {
  description = "The primary region provision resources within."
  default     = "us-central1"
}

variable "primary_zone" {
  description = "The primary zone to provision resources within."
  default     = "us-central1-a"
}


variable "machine_type" {
  description = "Machine type for the kubernetes nodes"
  default     = "custom-10-30720"
}

variable "preemptible_vm" {
  description = "Allocate preemptible VMs type"
  default     = "true"
}


variable "network" {
  default = "cardless-network"
}

variable "subnetwork" {
  default = "cardless-sub-network"
}

variable "gke-service-account" {
  default = "cardless-gke-service-account"
}

variable "gke-service-account-display-name" {
  default = "cardless-gke-service-account"
}