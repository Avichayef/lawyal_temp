# ECR module - create Docker container registry

resource "aws_ecr_repository" "ly_ecr" {
  name = "ly-flask-app-repo"  # ECR repository for Docker images  
}
