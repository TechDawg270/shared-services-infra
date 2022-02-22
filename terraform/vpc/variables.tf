locals {
  name = "shared-services-${var.environment}"
  
  tags = {
    Name        = "shared-services-${var.environment}"
    owner       = "dane"
    product     = "infra"
    terraform   = "true"
    repo        = "https://github.com/TechDawg270/shared-services-infra/tree/master/terraform"
    description = "Shared Services AWS infa"
  }
}

variable "region" {
  description = "The AWS Region"
  default     = "us-west-2"
}

variable "environment" {
  description = "Environment"
  default     = "dev"
}

variable "cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "azs" {
  type        = list(string)
  description = "A list of availability zones in the region"
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC"
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
}
