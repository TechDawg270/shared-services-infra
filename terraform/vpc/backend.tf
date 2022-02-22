terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "danes-demo-days-terraform"
    key    = "vpc.tfstate"
  }
}

