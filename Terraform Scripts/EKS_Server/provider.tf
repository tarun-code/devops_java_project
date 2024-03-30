terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # Optional but recommended in production
    }
  }

  backend "s3" {
    bucket         = "devopsprojecttarun"
    key            = "eks-server/terraform.tfstate"
    region         = "ap-south-1"

  }
}

provider "aws" {
  region = "ap-south-1"
}
