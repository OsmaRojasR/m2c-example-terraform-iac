variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "network_name" {
  description = "Name of the GCP network"
  type        = string
}

variable "credentials" {
  description = "Credentials of the GCP USER"
  type        = string
}

variable "subnets" {
  description = "Names of the GCP subnets"
  type        = list(string)
}

variable "subnets_cidrs" {
  description = "CIDRS of the GCP subnets"
  type        = list(string)
}
