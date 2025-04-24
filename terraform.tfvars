# AWS Region
region = "us-east-1"

# VPC Configuration
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"

# Availability Zones
public_subnet_az  = "us-east-1a"
private_subnet_az = "us-east-1b"

# S3 Configuration
bucket_name = "lawyal-terraform-state-bucket-2025" # unique bucket name

# EKS Configuration
node_group_name = "lawyal-eks-node-group"  # name for the EKS node group
