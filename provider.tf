terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "Student-785169158894"

}
terraform {
  backend "s3" {
    bucket = "group4project3-bucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
