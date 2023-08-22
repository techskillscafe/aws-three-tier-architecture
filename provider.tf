terraform {
  required_version = ">= 1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         	   = "<ENV>-infrastructure-tfstate"
    key              	 = "state/terraform.tfstate"
    region         	   = "eu-west-1"
    encrypt        	   = true
    dynamodb_table     = "mycomponents_tf_lockid"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  profile= "terraform"
}

