### Terraform Variables for vpc modules 
vpc_cidr = "10.10.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
cluster_name = "weather-eks"
private_subnet_cidr = ["10.10.1.0/24","10.10.2.0/24","10.10.3.0/24"]
public_subnet_cidr = ["10.10.4.0/24","10.10.5.0/24","10.10.6.0/24"]
