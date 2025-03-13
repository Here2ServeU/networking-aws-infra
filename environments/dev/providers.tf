terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "t2s-terraform-state"
    key    = "dev/networking.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}