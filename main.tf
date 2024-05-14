terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }

  backend "s3" {
    bucket = "remotestate-fit-homolog"
    key    = "pipeline-homolog/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"
}

module "vpc-aws-module" {
  source = "git::https://github.com/romuloff22/vpc-aws-module.git"

  cidr_vpc     = "10.0.0.0/16"
  cidr_subnet1 = "10.0.0.0/20"
  cidr_subnet2 = "10.0.16.0/20"
  cidr_subnet3 = "10.0.32.0/20"
  cidr_subnet4 = "10.0.48.0/24"
  cidr_subnet5 = "10.0.49.0/24"
  cidr_subnet6 = "10.0.50.0/24"

  environment = "Homolog"
}