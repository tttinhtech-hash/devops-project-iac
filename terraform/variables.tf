# ============================================
# GENERAL SETTINGS
# ============================================

variable "aws_region" {
  description = "AWS Region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "environment" {
  description = "Environment name (dev, staging, production)"
  type        = string
  default     = "production"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "devops-project-iac"
}

# ============================================
# VPC CONFIGURATION
# ============================================

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}

# Public Subnets: Đặt NAT Gateway, Bastion (nếu cần)
variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private Subnets: Đặt EC2 (Jenkins/Nexus/Sonar) và EKS worker nodes
variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

# ============================================
# EC2 CONFIGURATION (DevOps Tools)
# ============================================

variable "jenkins_instance_type" {
  description = "Instance type for Jenkins"
  type        = string
  default     = "t3.medium" # 2 vCPU, 4GB RAM
}

variable "nexus_instance_type" {
  description = "Instance type for Nexus"
  type        = string
  default     = "t3.medium" # 2 vCPU, 4GB RAM
}

variable "sonarqube_instance_type" {
  description = "Instance type for SonarQube"
  type        = string
  default     = "t3.medium" # 2 vCPU, 4GB RAM
}

# ============================================
# EKS CONFIGURATION
# ============================================

variable "eks_cluster_name" {
  description = "Name of EKS cluster"
  type        = string
  default     = "devops-eks-cluster"
}

variable "eks_node_instance_types" {
  description = "Instance types for EKS worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "eks_desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "eks_min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "eks_max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 4
}

# ============================================
# TAGS
# ============================================

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Project     = "DevOps-Production-Ready"
    ManagedBy   = "Terraform"
    Environment = "production"
    Owner       = "DevOps Team"
  }
}
