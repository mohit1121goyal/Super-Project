terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region  # Change to your desired region
}


module "nexus_instance" {
  source        = "./ec2_instance"
  ami           = var.aws_ami
  instance_type = var.aws_type
  instance_name = "nexus"
  key_name      = var.aws_key_name
}

module "sonar_instance" {
  source        = "./ec2_instance"
  ami           = var.aws_ami
  instance_type = var.aws_type
  instance_name = "sonar"
  key_name      = var.aws_key_name
}

module "test_instance" {
  source        = "./ec2_instance"
  ami           = var.aws_ami
  instance_type = var.aws_type
  instance_name = "test"
  key_name      = var.aws_key_name
}
