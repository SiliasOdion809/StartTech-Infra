terraform {
  required_version = ">= 0.75.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
