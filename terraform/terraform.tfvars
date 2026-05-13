aws_region = "eu-west-1"
vpc_cidr   = "10.0.0.0/16"

# Public subnets for load balancer and NAT gateway
public_subnet_1_cidr = "10.0.1.0/24"
public_subnet_2_cidr = "10.0.2.0/24"

# Private subnets for EC2 instances
private_subnet_1_cidr = "10.0.3.0/24"
private_subnet_2_cidr = "10.0.4.0/24"

# SSH key pair name
key_name = "starttech-key"

# EC2 instance configuration
ami_id        = "ami-0de864d6a3bd20ea8"
instance_type = "t3.micro"

# S3 bucket configuration
frontend_bucket_name = "silias-starttech-frontend-bucket"