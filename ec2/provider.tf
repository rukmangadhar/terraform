terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

# Provie authenrication here
provider "aws" {
  region = "us-east-1"
}
