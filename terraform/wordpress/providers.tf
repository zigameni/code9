provider "aws" {
  region  = "us-east-1"
  alias   = "us-east-1"
}

terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6.2"
    }
  }
  
  backend "s3" {
    bucket = "code9-docker-gazi"
    key    = "terraform/wordpress"
    region = "us-east-1"
  }
}