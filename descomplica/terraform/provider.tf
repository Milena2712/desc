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
