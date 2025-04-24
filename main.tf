# Main tf file for managing all modules
# Define provider and call each module with vars

provider "aws" {
  region = var.region
}

# Create bucket for terraform state
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name  
}

# Create VPC with public and private subnets
module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_az   = var.public_subnet_az
  private_subnet_az  = var.private_subnet_az 
}

# Create EKS cluster and node groups
module "eks" {
  source     = "./modules/eks"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = [module.vpc.public_subnet_id, module.vpc.private_subnet_id]
  eks_role_arn = module.iam.eks_cluster_role_arn
  node_group_role_arn = module.iam.eks_node_group_role_arn
  node_group_name = var.node_group_name  
}

# Create ECR repo for Docker images
module "ecr" {
  source = "./modules/ecr"  
}

# Create IAM roles and policies
module "iam" {
  source = "./modules/iam"  
}
