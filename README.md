# README.md

# StartTech Infrastructure Repository

## Project Overview

This repository contains the Infrastructure as Code (IaC) implementation for the StartTech full-stack application using Terraform and AWS cloud services.

The infrastructure provisions and manages a production-style cloud environment supporting:

- Frontend hosting on Amazon S3
- Global content delivery using CloudFront
- Backend compute infrastructure using EC2 Auto Scaling Groups
- Application Load Balancer for traffic distribution
- Redis ElastiCache cluster for caching and sessions
- MongoDB Atlas connectivity
- CloudWatch monitoring and logging
- IAM roles and policies
- Secure networking and Security Groups

Infrastructure deployment automation is implemented using GitHub Actions CI/CD pipelines.

---

# Technologies Used

## Infrastructure as Code

- Terraform
- GitHub Actions
- Bash Scripting

---

## AWS Services

- Amazon EC2
- Auto Scaling Group (ASG)
- Application Load Balancer (ALB)
- Amazon S3
- CloudFront CDN
- Amazon ECR
- ElastiCache Redis
- CloudWatch
- IAM
- Security Groups
- VPC Networking

---

# Infrastructure Architecture

```text
Users
   ↓
CloudFront CDN
   ↓
S3 Static Website Hosting
   ↓
Application Load Balancer
   ↓
EC2 Auto Scaling Group
   ↓
Dockerized Backend Services
   ↓
MongoDB Atlas
   ↓
Redis ElastiCache
```

---

# Repository Structure

```text
starttech-infra/
├── .github/
│   └── workflows/
│       └── infrastructure-deploy.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   │
│   └── modules/
│       ├── networking/
│       ├── compute/
│       ├── storage/
│       └── monitoring/
│
├── scripts/
│   └── deploy-infrastructure.sh
│
├── monitoring/
│   ├── cloudwatch-dashboard.json
│   ├── alarm-definitions.json
│   └── log-insights-queries.txt
│
├── README.md
└── ARCHITECTURE.md
```

---

# Infrastructure Components

## Networking

The networking module provisions:

- VPC
- Public Subnets
- Internet Gateway
- Route Tables
- Security Groups

---

## Compute

The compute module provisions:

- EC2 instances
- Auto Scaling Group
- Launch Templates
- Application Load Balancer
- Target Groups

---

## Storage

The storage module provisions:

- Amazon S3 bucket
- CloudFront distribution
- Amazon ECR repositories

---

## Monitoring

The monitoring module provisions:

- CloudWatch Log Groups
- CloudWatch Metrics
- Monitoring Dashboards
- Log Insights Queries

---

# CI/CD Pipeline Overview

The infrastructure deployment pipeline automates:

1. Terraform initialization
2. Terraform validation
3. Terraform formatting checks
4. Terraform plan generation
5. Terraform apply
6. Infrastructure deployment verification

GitHub Actions is used to automate the entire infrastructure deployment process.

---

# Setup Instructions

## Clone Repository

```bash
git clone <repository-url>
```

---

## Initialize Terraform

```bash
cd terraform
terraform init
```

---

## Validate Terraform Configuration

```bash
terraform validate
```

---

## Generate Terraform Plan

```bash
terraform plan
```

---

## Apply Infrastructure

```bash
terraform apply
```

---

# Deployment Automation

## Infrastructure Deployment Script

```bash
bash scripts/deploy-infrastructure.sh
```

---

# Terraform Modules

## networking/

Contains:
- VPC configuration
- subnet configuration
- routing
- internet gateway
- security groups

---

## compute/

Contains:
- EC2 configuration
- ALB configuration
- Auto Scaling configuration
- launch templates

---

## storage/

Contains:
- S3 configuration
- CloudFront configuration
- ECR repositories

---

## monitoring/

Contains:
- CloudWatch log groups
- dashboards
- alarms
- metrics

---

# Security Implementation

Security practices implemented:

- IAM least-privilege policies
- Security Group isolation
- SSH key authentication
- GitHub Secrets management
- Private ECR repositories
- Encrypted communication
- Controlled inbound access

---

# Monitoring & Observability

Monitoring services include:

- CloudWatch Logs
- CloudWatch Dashboards
- CloudWatch Metrics
- Log Insights Queries
- Health Checks

---

# Future Improvements

- Terraform remote state management
- Multi-region deployment
- ECS or Kubernetes migration
- Blue/Green infrastructure deployment
- Advanced monitoring with Prometheus and Grafana
- WAF integration

---

# Author

Silias Odion

Cloud / DevOps Engineering Project