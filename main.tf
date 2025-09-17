terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = var.awsRegion
  #access_key = var.access_key
  #secret_key = var.secret_key
  #   profile = "sagar"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = var.instanceType

  tags = {
    Name = var.instanceName
  }
}