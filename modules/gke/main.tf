terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.0"
    }

  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  project = var.project_id
  name = var.cluster_name
  location = var.region
  initial_node_count = 1
  remove_default_node_pool = true
  network = var.network
  subnetwork = var.subnetwork
  
  node_pool {
    name = "default-node-pool"
    node_count = 1
    node_config {
      machine_type = "e2-medium"
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
  }
}