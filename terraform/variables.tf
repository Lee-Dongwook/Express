variable "region" {
  default = "us-west-2"
}

variable "cluster_name" {
  default = "my-cicd-cluster"
}

variable "node_instance_type" {
  default = "t3.medium"
}

variable "desired_capacity" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}
