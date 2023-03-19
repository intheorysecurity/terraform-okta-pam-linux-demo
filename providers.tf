terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
    oktapam = {
      source  = "okta/oktapam"
      version = "0.3.1"
    }
  }
}

//AWS Config
provider "aws" {
  //Config options
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

//Okta ASA Config
provider "oktapam" {
  # Configuration options
  oktapam_key    = var.oktapam_key
  oktapam_secret = var.oktapam_secret
  oktapam_team   = var.oktapam_team
}