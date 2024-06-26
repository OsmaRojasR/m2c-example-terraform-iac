provider "google" {
  credentials = file(var.credentials)
  project = var.project_id
  region = var.region
}

module "vpc" {
  source = "./modules/network/vpc"
  project_id = var.project_id
  network_name = var.network_name
  region = var.region
  subnets = var.subnets
  subnets_cidrs = var.subnets_cidrs
}

module "firewall" {
  source = "./modules/network/security"
  network = module.vpc.vpc_id
  network_name = var.network_name
}