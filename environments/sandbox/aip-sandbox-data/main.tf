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

module "network" {
  source              = "../../../modules/network"
  project_id          = var.project_id
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  subnet_cidr_range   = var.subnet_cidr_range
  region              = var.region
}