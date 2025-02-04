provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "yyf-workflow"
  force_destroy = true
}

terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key    = "yyf.tfstate"
    region = "ap-southeast-1"
  }
}

