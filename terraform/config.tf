/*terraform {
  required_version = ">= 0.75.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }

  backend "s3" {
    bucket         = "tf-backend-silias"
    key            = "backend.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "terraform_locks"
  }
}
*/