terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "jenkins_demo_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Jen-terra-webhook-Demo"
  }
}
