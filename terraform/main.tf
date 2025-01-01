terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }

  required_version = ">= 1.3.0"
}

module "eks" {
  source          = "./eks.tf"
  cluster_name    = var.cluster_name
  node_instance_type = var.node_instance_type
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  min_size         = var.min_size
}
