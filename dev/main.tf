provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "s3-tsbucket-tf-backend"
    key = "dev/terraform.tfstate"
    # ...
  }
}

module "s3-buckets" {
    source = "../modules/s3"
    environment = "${var.environment}"
}