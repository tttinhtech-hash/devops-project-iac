terraform {
  required_version = ">= 1.6.0"

  # Backend S3: Lưu state file trên cloud
  backend "s3" {
    bucket         = "devops-project-tfstate-bucket-2025-abc" # ⚠️ THAY TÊN BUCKET CỦA BẠN
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider AWS
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "DevOps-Production-Ready"
      ManagedBy   = "Terraform"
      Environment = var.environment
    }
  }
}
