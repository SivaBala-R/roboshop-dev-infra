terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "roboshop-infra-bucket"
    key = "roboshop-vpc.tfstate"
    region = "ap-southeast-2"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "ap-southeast-2"
}