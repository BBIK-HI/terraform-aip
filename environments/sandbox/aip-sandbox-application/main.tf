terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# module "project_network" {
#   source              = "modules\network"
#   project_id          = var.project_id
#   network_name        = "vpc-sandbox"
#   subnet_name         = "snet-prd-gke-portal"
#   subnet_cidr_range   = "10.250.0.0/24"
#   region              = var.region
# }