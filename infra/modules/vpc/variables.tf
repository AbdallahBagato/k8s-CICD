variable "vpc_cidr" {
    description = "CIDR for the vpc"
    type = string
    default = "10.10.0.0/16"
}
variable "cluster_name" {
    description = "Name of the eks cluster"
    type = string
    default = "eks-cluster"
}
variable "private_subnet_cidr" {
    description = "CIDR Block for the private subnets"
    type = list(string)
}
variable "availability_zones" {
    description = "List of availability zones for the subnets"
    type = list(string)
}
variable "public_subnet_cidr" {
    description = "CIDR Block for the public subnets"
    type = list(string)
}
