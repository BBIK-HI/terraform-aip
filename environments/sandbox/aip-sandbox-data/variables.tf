variable "project_id" {
    type= string
    default = "sandbox-data-478506"
}

variable "region" {
    type= string
    default = "asia-southeast1"
}

variable "zone" {
    type = string
    default = "asia-southeast1-a"
}

variable "network_name" {
    type = string
    default = "vpc-sandbox"
}

variable "subnet_name" {
    type = string
    default = "snet-sandbox-data"
}

variable "subnet_cidr_range" {
    type = string
    default = "10.250.1.0/24"
}