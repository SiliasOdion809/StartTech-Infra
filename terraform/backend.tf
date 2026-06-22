terraform {
    backend "s3" {
    bucket       = "starttech-terraform-state-silias-2026"
    key          = "starttech-infra/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}