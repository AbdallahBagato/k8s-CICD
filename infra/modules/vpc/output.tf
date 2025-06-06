output "vpc_id" {
    description = "ID of the VPC"
    value = aws_vpc.main.id
}
output "private_subnet_ids" {
    description = "Private Subnets IDs"
    value = aws_subnet.private[*].id
}
output "public_subnet_ids" {
    description = "public Subnets IDs"
    value = aws_subnet.public[*].id
}
