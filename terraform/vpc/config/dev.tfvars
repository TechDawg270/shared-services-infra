region      = "us-west-2"
environment = "dev"
cidr        = "10.0.0.0/16"
azs = [
  "us-west-2a",
  "us-west-2b",
]
public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
]
private_subnets = [
  "10.0.4.0/24",
  "10.0.5.0/24",
]
