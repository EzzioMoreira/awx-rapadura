provider "aws" {
  region  = var.aws_region
  version = "= 3.0"
}

terraform {
  backend "s3" {
    bucket = "app-rapadura"
    key    = "awx-terraform-rapaduras.tfstate"
    region = "us-west-1"
  }
}
