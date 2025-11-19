variable "project_id" {
  description = "The ID of the GCP project where the network will be created."
  type        = string
}

variable "network_name" {
  description = "The name for the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name for the primary subnet."
  type        = string
}

variable "subnet_cidr_range" {
  description = "The IP CIDR range for the primary subnet (e.g., 10.10.0.0/24)."
  type        = string
}

variable "region" {
  description = "The GCP region where the subnet will be created."
  type        = string
}