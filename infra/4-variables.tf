## Terraform TFvars will define the variables used in the vpc module
variable "vpc_cidr" {
    description = "CIDR for the vpc"
    type = string
    default = "10.10.0.0/16"
}
variable "availability_zones" {
    description = "List of availability zones for the subnets"
    type = list(string)
    default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}
variable "cluster_name" {
    description = "Name of the eks cluster"
    type = string
    default = "eks-cluster"
}

variable "private_subnet_cidr" {
    description = "CIDR Block for the private subnets"
    type = list(string)
    default = ["10.10.1.0/24","10.10.2.0/24","10.10.3.0/24"]
}

variable "public_subnet_cidr" {
    description = "CIDR Block for the public subnets"
    type = list(string)
    default = ["10.10.4.0/24","10.10.5.0/24","10.10.6.0/24"]
}
variable "admin_acess" {
    description = "Enable admin access for the bootstrap cluster creator"
    type        = bool
    default     = true
}
variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.31"
}
variable "max_size" {
    description = "The maximum number of nodes in the EKS node group"
    type        = number
    default     = 3
}
variable "min_size" {
    description = "The Maximum number of nodes for eks node group"
    type = number
    default = 2
}
variable "desired_size" {
    description = "The desired number of nodes in the EKS node group"
    type        = number
    default     = 2
}
variable "instance_types" {
    description = "The instance types for the EKS node group"
    type        = list(string)
    default     = ["t3.medium"]
}
variable "capacity_type" {
    description = "The capacity type for the EKS node group"
    type        = string
    default     = "ON_DEMAND"
}
