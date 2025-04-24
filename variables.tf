# Vars used in the modules

variable "region" {
  type    = string
  default = "us-east-1"
  description = "AWS region"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
  description = "CIDR block for the private subnet"
}

variable "public_subnet_az" {
  type    = string
  default = "us-east-1a"
  description = "AZ for the public subnet"
}

variable "private_subnet_az" {
  type    = string
  default = "us-east-1b"
  description = "AZ for the private subnet"
}

variable "bucket_name" {
  type    = string
  default = "lawyal-terraform-state-bucket"
  description = "Bucket Name for terraform state"
}

variable "node_group_name" {
  type    = string
  default = "lawyal-eks-node-group"
  description = "EKS node group name"
}
