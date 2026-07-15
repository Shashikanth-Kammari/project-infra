terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }
}

# provide the authentication here

provider "aws" {
    region = "us-east-1"
  # Configuration options
}