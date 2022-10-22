output "vpc" {
  value = aws_vpc.main
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public
}


output "subnet_ids_public" {
  value = {for i in range(0, length(local.public_subnet_availability_zones)) : local.public_subnet_availability_zones[i]=>aws_subnet.public[i].id}
}

output "internet_gateway" {
  value = aws_internet_gateway.internet_gateway
}

output "public_security_group" {
  value = aws_security_group.public
}



output "public_security_group_id" {
  value = aws_security_group.public.id
}
