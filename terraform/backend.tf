terraform {
  backend "s3" {
    bucket         = "starttech-terraform-state-silias-2026"
    key            = "starttech-infra/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}