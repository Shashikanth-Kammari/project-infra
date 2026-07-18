terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }

  backend "s3" {
    bucket = "shashikanth-s3-bucket "
    key    = "resomte-state-demo"
    region = "us-east-1"
  }
}

# provide the authentication here

provider "aws" {
    region = "us-east-1"
  # Configuration options
}