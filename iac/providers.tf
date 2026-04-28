terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.2.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "docker" {
  # Configuration options
}

provider "aws" {
  region  = "us-east-1"
  profile = "Bvelasquezlab"
}