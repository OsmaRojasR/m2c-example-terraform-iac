variable "network_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "project_id" {
  description = "GCP project id"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "subnets" {
  description = "Nombres de las subredes"
  type        = list(string)
}

variable "subnets_cidrs" {
  description = "Cidrs de las subred"
  type        = list(string)
}