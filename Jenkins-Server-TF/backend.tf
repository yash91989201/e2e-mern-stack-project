terraform {
  backend "s3" {
    bucket         = "e2e-mern-tf"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "e2e-mern-tf-state"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}

