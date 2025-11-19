module "network" {
  source              = "../../../modules/network"
  project_id          = var.project_id
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  subnet_cidr_range   = var.subnet_cidr_range
  region              = var.region
}

module "gke" {
  source = "../../../modules/gke"
  project_id = var.project_id
  cluster_name = var.cluster_name
  region = var.region
  network = var.network_name
  subnetwork = var.subnet_name
}