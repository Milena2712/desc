provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket = var.terraform_bucket
    key    = "state/descoshop/terraform.tfstate"
    region = var.aws_region
  }
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "descoshop-cluster"
}

variable "vpc_id" {
  description = "The VPC ID for the EKS cluster"
}

variable "subnet_ids" {
  description = "The subnet IDs for the EKS cluster"
}

variable "bucket_name" {
  description = "The name of the S3 bucket for the frontend"
  default     = "descoshop-frontend"
}

variable "db_name" {
  description = "The name of the PostgreSQL database"
  default     = "descoshopdb"
}

variable "db_username" {
  description = "The username for the PostgreSQL database"
  default     = "admin"
}

variable "db_password" {
  description = "The password for the PostgreSQL database"
  default     = "strongpassword"
}

variable "security_group_id" {
  description = "The security group ID for the RDS instance"
}

variable "subnet_group_name" {
  description = "The DB subnet group name"
}



